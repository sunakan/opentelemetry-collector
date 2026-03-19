commit 66d83f0325db8049620c533346ae5d7901123825
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Wed Feb 26 13:43:58 2025 -0800

    [exporter][batching] Serialized bytes based batching for logs (#12299)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR implements serialized bytes based batching.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/issues/3262
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    ```
    BenchmarkSplittingBasedOnItemCountManySmallLogs-10                           409           2822478 ns/op         3148718 B/op      71082 allocs/op
    BenchmarkSplittingBasedOnByteSizeManySmallLogs-10                            412           2890594 ns/op         3156103 B/op      71242 allocs/op
    BenchmarkSplittingBasedOnItemCountManyLogsSlightlyAboveLimit-10               38          27579702 ns/op        43531582 B/op     700471 allocs/op
    BenchmarkSplittingBasedOnByteSizeManyLogsSlightlyAboveLimit-10                24          43067219 ns/op        43639889 B/op     702927 allocs/op
    BenchmarkSplittingBasedOnItemCountHugeLogs-10                                 40          29722710 ns/op        41922925 B/op     690300 allocs/op
    BenchmarkSplittingBasedOnByteSizeHugeLogs-10                                  16          64321198 ns/op        42107144 B/op     694144 allocs/op
    ```
    
    #### Caveat
    We book keep both item count and byte size regardless of batching
    option, which adds an overhead in both cases.
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
