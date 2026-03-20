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
# my-memo/cherry-picked.txtに記録されたコミットIDを元に
# origin/mainの次のコミットをcherry-pickし、cherry-picked.txtを更新してコミットする
#

REPO_ROOT="$(git rev-parse --show-toplevel)"
readonly REPO_ROOT
readonly CHERRY_PICKED_FILE='my-memo/cherry-picked.txt'

cd "$REPO_ROOT"

if [[ -f "$CHERRY_PICKED_FILE" ]]; then
  last_commit_id=$(tail -n1 "$CHERRY_PICKED_FILE")
else
  last_commit_id=""
fi

if [[ "$last_commit_id" == "" ]]; then
  next_commit_id=$(git log origin/main --reverse --abbrev=8 --format='%h' | head -n1 || true)
else
  memo_file=$(find "$REPO_ROOT/my-memo/git-tags" -type f -name 'MY_MEMO.md' -path "*_${last_commit_id}/*" | head -n1 || true)
  if [[ "$memo_file" == "" ]]; then
    log_error "最新コミット ${last_commit_id} の MY_MEMO.md がありません。メモを書いてから進んでください"
    exit 1
  fi
  next_commit_id=$(git log "${last_commit_id}..origin/main" --reverse --abbrev=8 --format='%h' | head -n1 || true)
fi

if [[ "$next_commit_id" == "" ]]; then
  log_info "cherry-pickすべきコミットはありません"
  exit 0
fi

log_info "cherry-pick: $next_commit_id"
git cherry-pick "$next_commit_id"

echo "$next_commit_id" >> "$CHERRY_PICKED_FILE"
git add "$CHERRY_PICKED_FILE"
git commit -m "cherry-picked: $next_commit_id"
