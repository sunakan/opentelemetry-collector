commit 7b39a894e1bf5c2e72f2b47e06ca16d956b1914a
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed May 5 15:19:29 2021 -0700

    Fix batch processor traces reorder, improve performance (#3107)
    
    Benchmarks Before:
    
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/processor/batchprocessor
    cpu: Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz
    BenchmarkSplitTraces
    BenchmarkSplitTraces-16             8277            135600 ns/op          222440 B/op       1725 allocs/op
    PASS
    ```
    
    Benchmarks After:
    
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/processor/batchprocessor
    cpu: Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz
    BenchmarkSplitTraces
    BenchmarkSplitTraces-16             9896            108060 ns/op          172409 B/op       1372 allocs/op
    PASS
    ```
    
    Benchmarks Reference Clone:
    
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/processor/batchprocessor
    cpu: Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz
    BenchmarkCloneSpans
    BenchmarkCloneSpans-16             12393             97528 ns/op          167896 B/op       1303 allocs/op
    PASS
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
