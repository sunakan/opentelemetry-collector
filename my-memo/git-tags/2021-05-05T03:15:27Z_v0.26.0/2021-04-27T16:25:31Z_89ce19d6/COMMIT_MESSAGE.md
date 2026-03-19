commit 89ce19d61190c76e5fe66f03974ccc39ec3f32b8
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Apr 27 09:25:31 2021 -0700

    Add RemoveIf func to all slices (#2998)
    
    * Add Filter func to all slices
    
    Changed probabilisticsamplerprocessor and filterprocessor to show how we can simplify code. Other places can also be improved.
    
    Benchmarks Before:
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/processor/filterprocessor
    cpu: Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz
    BenchmarkStrictFilter
    BenchmarkStrictFilter-16            2613            433773 ns/op          270314 B/op       7039 allocs/op
    PASS
    
    Process finished with the exit code 0
    ```
    
    Benchmarks After:
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/processor/filterprocessor
    cpu: Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz
    BenchmarkStrictFilter
    BenchmarkStrictFilter-16           42373             26623 ns/op               0 B/op          0 allocs/op
    PASS
    
    Process finished with the exit code 0
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Change Filter to RemoveIf
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
