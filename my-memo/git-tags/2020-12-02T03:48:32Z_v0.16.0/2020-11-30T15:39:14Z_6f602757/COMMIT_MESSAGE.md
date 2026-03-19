commit 6f60275760aea4c0dbc0e494d8dbdac4b8ecf05c
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Nov 30 10:39:14 2020 -0500

    Add support for slices to non-pointers, use non-nullable AnyValue (#2192)
    
    * Add support for slices to non-pointers, use non-nullable AnyValue
    
    Before:
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/consumer/pdata
    BenchmarkTracesFromOtlp
    BenchmarkTracesFromOtlp-16           584           1805875 ns/op          940352 B/op      29954 allocs/op
    PASS
    ```
    
    After:
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/consumer/pdata
    BenchmarkTracesFromOtlp
    BenchmarkTracesFromOtlp-16           681           1575996 ns/op          857915 B/op      24802 allocs/op
    PASS
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Resolve comments
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Update slice pdatagen names
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
