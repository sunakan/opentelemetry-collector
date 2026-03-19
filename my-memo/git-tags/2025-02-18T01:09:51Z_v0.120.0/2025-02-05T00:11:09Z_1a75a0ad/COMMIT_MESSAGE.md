commit 1a75a0add8f3f375f7a49f271fe53a5f42bcd136
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Feb 4 16:11:09 2025 -0800

    Implement sync disabled queue (#12245)
    
    This PR implements a version of a queue that can be used when users want
    to not have an async behavior and want to block until the request is
    send by the exporter.
    
    This implementation is only used when batching is enabled, otherwise if
    both batching and queueing are disabled no queue or batch is configured.
    
    **Benchmark results:**
    ```
    goos: darwin
    goarch: arm64
    pkg: go.opentelemetry.io/collector/exporter/exporterqueue
    cpu: Apple M2 Max
    BenchmarkDisabledQueueOffer
    BenchmarkDisabledQueueOffer-12           5839711               187.5 ns/op            24 B/op          1 allocs/op
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
