commit 1f89a5b15d336304c800eb8e4fdcfec3c4c1dc7f
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue May 11 12:09:55 2021 -0700

    Fix batch processor logs reorder, improve performance (#3125)
    
    Benchmarks Before:
    
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/processor/batchprocessor
    cpu: Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz
    BenchmarkSplitLogs
    BenchmarkSplitLogs-16              16072             76529 ns/op          114408 B/op        669 allocs/op
    PASS
    ```
    
    Benchmarks After:
    
    ```
    goarch: amd64
    pkg: go.opentelemetry.io/collector/processor/batchprocessor
    cpu: Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz
    BenchmarkSplitLogs
    BenchmarkSplitLogs-16              21795             56491 ns/op           88952 B/op        556 allocs/op
    PASS
    ```
    
    Benchmarks Reference Clone:
    
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/processor/batchprocessor
    cpu: Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz
    BenchmarkCloneLogs
    BenchmarkCloneLogs-16              22305             52075 ns/op           85976 B/op        503 allocs/op
    PASS
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
