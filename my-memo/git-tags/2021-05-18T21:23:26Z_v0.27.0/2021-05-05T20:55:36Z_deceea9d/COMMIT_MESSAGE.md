commit deceea9d544b10739dcc0721f761a8dc1736c206
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed May 5 13:55:36 2021 -0700

    Fix batch processor metrics reorder, improve performance (#3034)
    
    Benchmarks Before:
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/processor/batchprocessor
    cpu: Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz
    BenchmarkSplitMetrics
    BenchmarkSplitMetrics-16            6660            170653 ns/op          182889 B/op       3309 allocs/op
    PASS
    
    Process finished with the exit code 0
    ```
    
    Benchmarks After:
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/processor/batchprocessor
    cpu: Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz
    BenchmarkSplitMetrics
    BenchmarkSplitMetrics-16            7858            134259 ns/op          141881 B/op       2596 allocs/op
    PASS
    
    Process finished with the exit code 0
    ```
    
    Benchmarks Reference Clone:
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/processor/batchprocessor
    cpu: Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz
    BenchmarkCloneMetrics
    BenchmarkCloneMetrics-16            8726            127948 ns/op          137816 B/op       2503 allocs/op
    PASS
    
    Process finished with the exit code 0
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
