# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

This is a personal study fork of `open-telemetry/opentelemetry-collector`. The workflow is to cherry-pick commits from `origin/main` (upstream) one by one to study the history of the codebase.

## Study Workflow

```bash
# 次にcherry-pickすべきコミットIDを確認してcherry-pickする
./my-memo/scripts/cherry-pick-next.sh

# タグ間のdiffファイルをmy-memo/git-tags/以下に生成する
./my-memo/scripts/build-diffs.sh
```

## my-memo/ Structure

```
my-memo/
  cherry-picked.txt        # cherry-pick済みコミットIDの記録（tail -n1が最新）
  scripts/
    util.sh                # ログ関数・タイマー関数の共通ライブラリ
    cherry-pick-next.sh    # 次のcherry-pickすべきコミットをechoしてcherry-pickする
    build-diffs.sh         # git-tags/以下にdiffファイルを生成する
  git-tags/
    {UTC日時}_{タグ名}/           # 例: 2019-08-08T02:37:49Z_v0.0.1/
      {UTC日時}_{コミットID8桁}/  # 例: 2018-06-05T08:09:00Z_fd154a38/
        COMMIT_MESSAGE.md         # git show --no-patch の出力
        {filepath}.diff           # ファイルごとのdiff（git diff-tree形式）
```

## Scripts

### util.sh
`source` して使う共通ライブラリ。`LOG_LEVEL` 環境変数（`error`/`info`）でログ制御。`enable_timer` で実行時間を計測。

### cherry-pick-next.sh
`my-memo/cherry-picked.txt` の `tail -n1` を起点に `origin/main` の次のコミットを cherry-pick し、`cherry-picked.txt` に追記してコミットする。

### build-diffs.sh
`v[0-9]*` 形式のgitタグを古い順に処理し、タグ間のコミットごとに `COMMIT_MESSAGE.md` と各ファイルの `.diff` を生成する。`COMMIT_MESSAGE.md` が存在するコミットはスキップ（再実行可能）。
