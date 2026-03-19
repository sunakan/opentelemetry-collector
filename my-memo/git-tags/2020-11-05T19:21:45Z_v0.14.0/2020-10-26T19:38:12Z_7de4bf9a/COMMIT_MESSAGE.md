commit 7de4bf9a2b475694d792ed0a4764e1f8f79353da
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Oct 26 12:38:12 2020 -0700

    Change Span/Trace ID to be byte array (#2001)
    
    * Change Span/Trace ID to be byte array
    
    A lot of boilerplate changes, the major ones:
    * Return error and reject requests with trace/span ids that are not 16/8 byte arrays
    * For OC copy only the first 8/16 bytes if larger than that, if shorter pad with 0 at the end.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Fix lint issues
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Update internal/data/opentelemetry-proto-gen/common/v1/spanid.go
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
    
    * Update internal/data/opentelemetry-proto-gen/common/v1/spanid.go
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
    
    * Remove unused variable and copy
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Add benchmarks for to/from proto bytes
    
    Before:
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/consumer/pdata
    BenchmarkTracesFromOtlp
    BenchmarkTracesFromOtlp-16           622           1885796 ns/op         1105052 B/op      40944 allocs/op
    PASS
    ```
    
    After:
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/consumer/pdata
    BenchmarkTracesFromOtlp
    BenchmarkTracesFromOtlp-16           686           1759476 ns/op          981565 B/op      35113 allocs/op
    PASS
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
