# MY_MEMO: e3604d98 - Initial commit of the exporter daemon and its Go exporter

## 概要

エクスポーターデーモン（`opencensusd`）とGoアプリ用エクスポーターの初期プロトタイプが追加された。
前のコミット（fd154a38）で「アプリからエクスポーターを切り離す」という設計思想が語られたが、このコミットでその最初の実装が登場する。

追加されたファイル：
- `cmd/opencensusd/main.go` — デーモン本体
- `exporter/exporter.go` — アプリ側が使うエクスポーター
- `internal/internal.go` — エンドポイントファイルのパス管理
- `example/main.go` — 使用例

## エクスポーターとは何か

**エクスポーター（Exporter）**とは、アプリが収集した観測データをバックエンドに送り出す仕組みのこと。

送り出す観測データは2種類：

- **トレース（Trace / Span）** — リクエストがどの処理を通り、どれだけ時間がかかったかの記録。例: 「DBクエリに 5ms かかった」
- **メトリクス（Metrics）** — 数値で表される状態の時系列データ。例: 「リクエスト数が毎秒100件」「CPU使用率 40%」

送り先のバックエンドは Stackdriver（Google Cloud）、Zipkin、Jaeger などの監視・分析ツール。

このコミットでのデータの流れ：

```
Goアプリ (example/main.go)
  └─ exporter.Exporter (exporter/exporter.go)
       └─ gRPC で送信
            └─ opencensusd デーモン (cmd/opencensusd/main.go)
                 └─ TODO: Stackdriver / Zipkin 等のバックエンドへ転送
```

## 変更の意図・背景

> "This commit contains an initial prototype for the exporter daemon that can discovered via and endpoint file on the host."

> "The exporter looks for the endpoint file to see the availability of the daemon and exports if it is running."

> "Exporter daemon will allow OpenCensus users to export without having to link a vendor-specific exporter in their final binaries."

アプリとデーモンが**エンドポイントファイル**（後述）を介して通信する仕組みで、アプリのコードにバックエンド固有のエクスポーターを組み込まなくてよいようにする。

例えば「Stackdriverに送りたい」となった場合、アプリを修正してビルドし直さなくてよい。デーモンだけ差し替えればよい。

## 各ファイルの変更内容

### `internal/internal.go`（新規追加）

**エンドポイントファイル**のパスを管理するユーティリティ。

エンドポイントファイルとは、デーモンが起動時に書き出すテキストファイルで、デーモンが待ち受けているアドレス（`127.0.0.1:ポート番号`）が書かれている。アプリはこのファイルを読むことでデーモンの存在と接続先を知る。

- Linux/Mac: `~/.config/opencensus.endpoint`
- Windows: `%APPDATA%\opencensus\opencensus.endpoint`

```go
func DefaultEndpointFile() string {
    const f = "opencensus.endpoint"
    if runtime.GOOS == "windows" {
        return filepath.Join(os.Getenv("APPDATA"), "opencensus", f)
    }
    return filepath.Join(guessUnixHomeDir(), ".config", f)
}
```

### `cmd/opencensusd/main.go`（新規追加）

デーモン本体。起動すると以下を行う：

1. TCP でランダムポートを Listen する
2. そのアドレスをエンドポイントファイルに書き出す
3. gRPC（Googleが開発した高速なRPCフレームワーク）サーバーを起動し、アプリからのスパン・メトリクスを受け取る
4. Ctrl+C で終了時にエンドポイントファイルを削除する

```go
ls, err := net.Listen("tcp", "127.0.0.1:")
// ...
ioutil.WriteFile(endpointFile, []byte(ls.Addr().String()), 0777)
```

受け取ったデータの処理は `fmt.Println(in)` のみで、バックエンドへの転送は未実装（`// TODO(jbd): Implement.`）。

### `exporter/exporter.go`（新規追加）

アプリ側が組み込む `Exporter` 構造体。OpenCensus の `trace.Exporter` インターフェースを実装している。

動作の流れ：
1. 初回の `ExportSpan` 呼び出し時にバックグラウンドゴルーチンを起動
2. 1分ごとにエンドポイントファイルを確認し、デーモンが起動していれば gRPC で接続
3. デーモンが停止していればファイルが消えるため、自動的に送信を停止

```go
func (e *Exporter) lookup() {
    file := internal.DefaultEndpointFile()
    ep, err := ioutil.ReadFile(file)
    if os.IsNotExist(err) {
        e.deleteClient()  // デーモンが居なければ接続を切る
        return
    }
    // ...接続を確立
}
```

メトリクスエクスポーターは未実装（`// TODO(jbd): Add stats/metrics exporter.`）。

### `example/main.go`（新規追加）

使用例。アプリ側でやることは2行だけ：

```go
trace.RegisterExporter(&exporter.Exporter{})
trace.ApplyConfig(trace.Config{DefaultSampler: trace.AlwaysSample()})
```

`RegisterExporter` でエクスポーターを登録し、あとは通常通りスパンを作るだけ。デーモンが起動していれば自動的に送られ、停止していれば何も起きない。

## 気づきと学び

- **エンドポイントファイルによるサービスディスカバリ**が面白い。ファイルの有無でデーモンの存在を検知するシンプルな仕組み。現代的には DNS や Kubernetes のサービスディスカバリが一般的だが、「同一ホスト上でシンプルに」という制約のもとでの選択と思われる
- `TODO` コメントが多く、このコミットは明らかに「動く最小限のプロトタイプ」。バックエンドへの転送もメトリクスも未実装だが、アプリとデーモンの接続フローを確立することを優先している
- アプリ側のエクスポーターはデーモンが居なくても動く（ファイルがなければ静かに何もしない）設計になっており、「デーモンはオプション」という前コミットの思想が実装レベルでも体現されている
- `cmd/opencensusd/main.go` で import している `pb "github.com/census-instrumentation/opencensus-proto/gen-go/exporterproto"` は vendor に含まれるパッケージで、現在のワーキングツリーには vendor が展開されていないためビルド不可。次のコミット（2ad88673）で vendor が追加される
