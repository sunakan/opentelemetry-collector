commit 08262554e67ff6b378f3a3c782dd5056e07904c6
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Oct 27 14:35:45 2020 -0700

    Make all KeyValue non-nullable (#2017)
    
    Good win in the amount of allocations, and some nice win for the latency
    
    Before:
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/consumer/pdata
    BenchmarkTracesFromOtlp
    BenchmarkTracesFromOtlp-16           686           1759476 ns/op          981565 B/op      35113 allocs/op
    PASS
    ```
    
    After:
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/consumer/pdata
    BenchmarkTracesFromOtlp
    BenchmarkTracesFromOtlp-16           666           1720189 ns/op          940353 B/op      29961 allocs/op
    PASS
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
