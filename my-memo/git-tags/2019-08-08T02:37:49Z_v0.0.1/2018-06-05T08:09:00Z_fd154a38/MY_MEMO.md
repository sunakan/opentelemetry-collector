# MY_MEMO: fd154a38 - Initial commit

## 概要

このリポジトリの最初のコミット。当時のプロジェクト名は **OpenCensus service**（現在の OpenTelemetry Collector の前身）。
3つのファイル（`README.md`、`LICENSE`、`CONTRIBUTING.md`）が新規追加された。

## 変更の意図・背景

コミットメッセージは "Initial commit" とシンプルだが、`README.md` の内容からプロジェクトの動機が読み取れる。

**課題:**
OpenCensus でインストルメントされたサービスは、テレメトリデータをエクスポートするために各言語でエクスポーターを実装・登録し、再コンパイル・再デプロイが必要だった。インシデント対応時にこれは現実的ではない。

**解決策:**
OpenCensus service（ホスト上のデーモン）がプロセスからデータを収集し、設定されたバックエンドへ転送することで、アプリケーションコードの変更なしにエクスポーターを「後から」設定できるようにする。

## 各ファイルの変更内容

### README.md（新規追加）

プロジェクトの目的とゴールを記述：

- **Goals:**
  - **エクスポーターをアプリから切り離す。** 従来はアプリのコードにエクスポーターを組み込む必要があり、送り先を変えるたびにコード修正・再デプロイが必要だった。OpenCensus service はホスト上の別プロセス（デーモン）としてエクスポーターを担うため、アプリを触らずに送り先を変更できる（= 「遅延設定」）
    > "Allow enabling of configuring the exporters lazily. After deploying code, optionally run a daemon on the host and it will read the collected data and upload to the configured backend."
    > "they have to modify their code to register an exporter and redeploy. Asking our users recompile and redeploy is not an ideal at an incident time."
  - アプリのバイナリにエクスポーターを含めなくてよい。エクスポーターをバイナリに組み込むと、使う側が「どのバックエンドに送るか」を強制されてしまう。分離することで、Caddy（Webサーバー）や Istio Mixer（サービスメッシュ）のように「自分はオブザーバビリティのバックエンドを決めたくない」OSSプロジェクトが OpenCensus を採用しやすくなる
    > "Binaries can be instrumented without thinking about the exporting story. Allows open source binary projects (e.g. web servers like Caddy or Istio Mixer) to adopt OpenCensus without having to link any exporters into their binary."
  - エクスポーターをデーモン側に集約することで、全言語で全バックエンドをサポートしなくてよい
    > "Easier to scale the exporter development. Not every language has to implement support for each backend."
  - 必要なエクスポーターだけを含むカスタムデーモンを作成できる
    > "Custom daemons containing only the required exporters compiled in can be created."

- **Future goals:**
  - **クラスタ全体のコレクション:** この時点の OpenCensus service は「同一ホスト上のプロセス」からしかデータを収集できなかった。将来的には複数マシンにまたがるクラスタ全体を対象に、データを一元収集できるようにしたいという構想
    > "Providing cluster-wide collections and cluster-wide z-pages."
  - **z-pages の提供:** z-pages とは OpenCensus が持つデバッグ用のHTTPエンドポイント群のこと（`/tracez`・`/rpcz` など）。プロセス内部の状態（トレース・RPC統計など）をブラウザからリアルタイムに確認できる仕組み。クラスタ全体の z-pages を提供することで、複数サービスの状態をまとめて可視化したいという意図
  - **設定変更のプッシュ:** サンプリングレート（「全リクエストの何%をトレースするか」）などの設定を、実行中のサービスに対して動的に変更できるようにしたい。トラブルシューティング時に一時的にサンプリングを増やす、といったことがアプリの再起動なしにできるようにする構想
    > "Currently we provide no ways to push configuration changes such as the default sampling rate. It might be a problem at troubleshooting time."

### LICENSE（新規追加）

Apache License Version 2.0 の全文。

### CONTRIBUTING.md（新規追加）

コントリビューション手順：
- CLA（Contributor License Agreement）への署名が必要（Google CLA）
- すべての変更は GitHub Pull Request でレビューが必要

## 気づきと学び

- このプロジェクトは当初 **Google** が開発していた（`cla.developers.google.com` への言及、コミット著者が `jbd@golang.org`）。後に CNCF へ寄贈され OpenTelemetry へと発展した
- 「コードを変更せずにオブザーバビリティを後付けできる」というコンセプトは、現在の OpenTelemetry Collector の設計思想にそのまま引き継がれている
- v0.0.1 タグのディレクトリ配下にあるが、コミット日時は 2018-06-05 と、タグ付け（2019-08-08）より約1年以上前。つまり、このリポジトリは最初の1年以上タグなしで開発が進んでいた
- z-pagesというのがデバッグ用エンドポイントを指すこと
