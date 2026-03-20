---
name: memo
description: 最新のcherry-pickしたコミットの内容をMY_MEMO.mdに記載する
allowed-tools: Read(**/opentelemetry-collector/my-memo/**), Read(my-memo/**), Glob(**/opentelemetry-collector/my-memo/**), Glob(my-memo/**), Bash(find:*), Bash(ls:*), Write(**/opentelemetry-collector/my-memo/**), Write(my-memo/**)
---

## タスク

`my-memo/cherry-picked.txt` の `tail -n1` で最新のcherry-pick済みコミットIDを取得し、対応するコミットディレクトリの `MY_MEMO.md` に内容の説明を記載する。

## 手順

1. `my-memo/cherry-picked.txt` を読み、最後の行のコミットID（8桁）を取得する
2. `my-memo/git-tags/` 以下のディレクトリを検索し、コミットIDに一致するコミットディレクトリを特定する
   - ディレクトリ名の形式: `{UTC日時}_{コミットID8桁}`
   - 例: `my-memo/git-tags/2019-08-08T02:37:49Z_v0.0.1/2018-06-05T08:09:00Z_fd154a38/`
3. そのディレクトリ内の以下のファイルを読み込む
   - `COMMIT_MESSAGE.md`: コミットメッセージ（git show --no-patch の出力）
   - `*.diff`: 変更された各ファイルのdiff（存在する場合）
4. 読み込んだ情報をもとに `MY_MEMO.md` を作成する

## MY_MEMO.md の構成

- このコミットで何が変更されたか（概要）
- 変更の意図・背景（コミットメッセージから読み取れる情報）
- 各ファイルの変更内容の説明（diffから読み取る）
- 気づきや学び（あれば）

## 文章のガイドライン

- 専門用語・固有名詞（ソフトウェア名、アーキテクチャパターン名など）は知らない前提で、一言説明を添える
- 読み取った内容には根拠として原文を引用する（ブロック引用 `>` を使う）
- 概念の説明は「それが何か」→「なぜ嬉しいか（課題・動機）」の順で書く

## 注意

- `MY_MEMO.md` がすでに存在する場合は上書きせず、ユーザーに確認する
- 日本語で記載する
