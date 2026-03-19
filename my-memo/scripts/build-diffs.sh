#!/usr/bin/env bash
set -Eeuo pipefail
#set -x
# -E: 関数やサブシェルでエラーが起きた時トラップ発動
# -e: エラーが発生した時点でスクリプトを終了
# -u: 未定義の変数を使用した場合にエラーを発生
# -x: スクリプトの実行内容を表示(debugで利用)
# -o pipefail: パイプライン内のエラーを検出

source "$(dirname "$0")/util.sh"
enable_timer "$@"

#
# my-memo/以下に日時(UTC)_v〇〇というタグディレクトリを用意する
# それぞれのタグディレクトリ以下に日時(UTC)_コミットID(8桁)というようなコミットディレクトリを用意する
# それぞれのコミットディレクトリには各ファイルのdiffファイルを置く
#

REPO_ROOT="$(git rev-parse --show-toplevel)"
readonly REPO_ROOT
readonly TAGS_ROOT='my-memo/git-tags'

cd "$REPO_ROOT"

ROOT_COMMIT_ID=$(git rev-list --max-parents=0 HEAD | cut -c1-8)
readonly ROOT_COMMIT_ID

prev_tag=""
while IFS= read -r date_and_tag; do
  tag=$(echo "$date_and_tag" | cut -d'_' -f2)
  if [[ "$prev_tag" == "" ]]; then
    range="${tag}"
  else
    range="${prev_tag}..${tag}"
  fi
  while IFS= read -r commit_date_and_id; do
    commit_hash=$(echo "$commit_date_and_id" | cut -d'_' -f2)
    commit_dir="$TAGS_ROOT/$date_and_tag/$commit_date_and_id"
    commit_msg="${commit_dir}/COMMIT_MESSAGE.md"
    if [[ -f "$commit_msg" ]]; then
      # 既にコミットメッセージファイルがあればスキップ
      continue
    fi

    if [[ "$commit_hash" == "$ROOT_COMMIT_ID" ]]; then
      root_opt='--root'
    else
      root_opt=''
    fi
    while IFS= read -r filepath; do
      diff_file="${commit_dir}/${filepath}.diff"
      mkdir -p "$(dirname "$diff_file")"
      if [[ ! -f "$diff_file" ]]; then
        git diff-tree -p --no-commit-id -r --no-color $root_opt "$commit_hash" -- "$filepath" > "$diff_file"
      fi
    done < <(git diff-tree --no-commit-id -r --name-only $root_opt "$commit_hash")
    mkdir -p "$commit_dir"
    git show --no-patch --no-color "$commit_hash" > "$commit_msg"
  done < <(TZ=UTC git log "$range" --reverse --abbrev=8 --format='%cd_%h' --date='format-local:%Y-%m-%dT%H:%M:%SZ')
  prev_tag="$tag"
  log_info "Finished: $date_and_tag"
done < <(TZ=UTC git tag -l 'v[0-9]*' --sort=creatordate --format='%(creatordate:format-local:%Y-%m-%dT%H:%M:%SZ)_%(refname:short)')
