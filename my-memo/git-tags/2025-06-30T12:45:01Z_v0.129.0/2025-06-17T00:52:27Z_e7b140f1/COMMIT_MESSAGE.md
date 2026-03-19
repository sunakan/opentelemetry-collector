commit e7b140f16eabae06d09fb10c15a5cdc34de76838
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Mon Jun 16 17:52:27 2025 -0700

    [exporterhelper] Switch request context encoding from map to KV list (#13216)
    
    Resolves
    https://github.com/open-telemetry/opentelemetry-collector/pull/13188#pullrequestreview-2927199051
    
    This also required moving to gogoproto to reuse existing
    opentelemetry.proto.common.v1.KeyValue message.
    
    Benchmarks:
    ```
    goos: darwin
    goarch: arm64
    pkg: go.opentelemetry.io/collector/pdata/xpdata/request
    cpu: Apple M1 Max
    
    before:
    BenchmarkEncodeDecodeContext-10           519790              2278 ns/op            1376 B/op         22 allocs/op
    
    after:
    BenchmarkEncodeDecodeContext-10           747158              1600 ns/op             661 B/op         18 allocs/op
    ```
