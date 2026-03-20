# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

`open-telemetry/opentelemetry-collector` の個人学習用フォーク。`origin/main` のコミットを1つずつ cherry-pick して歴史を追う。

## Study Workflow

```bash
# 次のコミットに進む（最新コミットの MY_MEMO.md がない場合は中断）
./my-memo/scripts/cherry-pick-next.sh

# タグ間の diff ファイルを my-memo/git-tags/ 以下に生成する
./my-memo/scripts/build-diffs.sh
```

スキルでも同じ操作ができる：
- `/next` — cherry-pick-next.sh を実行する
- `/memo` — 最新コミットの MY_MEMO.md を作成する

学習の順序: `/next` → `/memo` → `/next` → ...

## my-memo/ Structure

```
my-memo/
  cherry-picked.txt        # cherry-pick済みコミットIDの記録（tail -n1が最新）
  scripts/
    util.sh                # ログ関数・タイマー関数の共通ライブラリ
    cherry-pick-next.sh    # 次のコミットを cherry-pick する（MY_MEMO.md がなければ中断）
    build-diffs.sh         # git-tags/ 以下に diff ファイルを生成する
  git-tags/
    {UTC日時}_{タグ名}/           # 例: 2019-08-08T02:37:49Z_v0.0.1/
      {UTC日時}_{コミットID8桁}/  # 例: 2018-06-05T08:09:00Z_fd154a38/
        COMMIT_MESSAGE.md         # git show --no-patch の出力
        {filepath}.diff           # ファイルごとの diff（git diff-tree 形式）
        MY_MEMO.md                # コミット内容の学習メモ（日本語）
```
