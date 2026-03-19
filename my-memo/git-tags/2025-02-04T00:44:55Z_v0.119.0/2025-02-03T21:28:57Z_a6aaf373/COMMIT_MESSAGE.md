commit a6aaf373658914ea08702b569e76d83b82a7e309
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Feb 3 13:28:57 2025 -0800

    Fix MergeSplit issue that ignores the initial message size (#12257)
    
    This PR simplifies the MergeSplit logic while fixing a bug (see
    `TestMergeSplitManySmall*` on how to replicate that). The performance is
    also slightly improved by reducing some allocations, see:
    
    **Before:**
    ```
    goos: darwin
    goarch: arm64
    pkg: go.opentelemetry.io/collector/exporter/exporterhelper
    cpu: Apple M2 Max
    BenchmarkSplittingBasedOnItemCountManySmallTraces
    BenchmarkSplittingBasedOnItemCountManySmallTraces-12                 390           3029960 ns/op         4850499 B/op      81094 allocs/op
    PASS
    ```
    
    **After:**
    ```
    goos: darwin
    goarch: arm64
    pkg: go.opentelemetry.io/collector/exporter/exporterhelper
    cpu: Apple M2 Max
    BenchmarkSplittingBasedOnItemCountManySmallTraces
    BenchmarkSplittingBasedOnItemCountManySmallTraces-12                 414           2898061 ns/op         4850453 B/op      81092 allocs/op
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
