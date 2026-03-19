commit 8d718818ba15c5c9d1e6b6f6be5ba0f69281c461
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Tue Jun 17 16:56:02 2025 -0700

    [chore] [exporterhelper] Move to span context marshaling as a message (#13230)
    
    Resolves
    https://github.com/open-telemetry/opentelemetry-collector/pull/13220#discussion_r2153174157
    
    Benchmarks:
    ```
    goos: darwin
    goarch: arm64
    pkg: go.opentelemetry.io/collector/pdata/xpdata/request
    cpu: Apple M1 Max
    
    before:
    BenchmarkEncodeDecodeContext-10           528876              2331 ns/op            1200 B/op         28 allocs/op
    
    after:
    BenchmarkEncodeDecodeContext-10           559353              1832 ns/op             864 B/op         16 allocs/op
    ```
