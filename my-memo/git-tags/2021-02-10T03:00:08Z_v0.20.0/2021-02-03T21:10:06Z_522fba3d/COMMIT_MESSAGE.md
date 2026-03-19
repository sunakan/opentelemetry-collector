commit 522fba3dcd0b77b7bd1e25331cb61ba30bcf2d31
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Feb 3 13:10:06 2021 -0800

    Change exemplars to slice of values instead of ptrs (#2402)
    
    Benchmarks before:
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/consumer/pdata
    BenchmarkMetricsFromOtlp
    BenchmarkMetricsFromOtlp-16          322           3809358 ns/op         2271080 B/op      51507 allocs/op
    PASS
    ```
    
    Benchmarks after
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/consumer/pdata
    BenchmarkMetricsFromOtlp
    BenchmarkMetricsFromOtlp-16          331           3594315 ns/op         3212271 B/op      34700 allocs/op
    PASS
    ```
    
    Significant improvement in the number of allocations. Increase in the number of total bytes allocated.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
