commit 22fdd41bf306c556c3f09ae86e4b77ff0375832e
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Oct 27 15:35:39 2020 -0700

    Make all StringKeyValue non-nullable (#2019)
    
    * Make all StringKeyValue non-nullable
    
    Add benchmarks for logs and metrics similar to traces.
    
    Before:
    
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/consumer/pdata
    BenchmarkMetricsFromOtlp
    BenchmarkMetricsFromOtlp-16          298           3999204 ns/op         2424909 B/op      70785 allocs/op
    PASS
    ```
    
    After:
    
    ```
    goos: darwin
    goarch: amd64
    pkg: go.opentelemetry.io/collector/consumer/pdata
    BenchmarkMetricsFromOtlp
    BenchmarkMetricsFromOtlp-16          326           3630227 ns/op         2271248 B/op      51577 allocs/op
    PASS
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Update consumer/pdata/common_test.go
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
