commit 6a546b28b1cd13e78514c5dfd26438c394d8b861
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Wed Jan 22 13:33:38 2025 -0800

    [chore][exporter][batcher] Improve exporter.request merge splitting performance by caching items count (#12136)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR improves item-based merge splitting by caching item count in
    `exporter.request`. Benchmarks shows benefits the case where many
    requests are merged in the same batch. We observed roughly 30 - 75%
    latency improvement.
    
    | Event Type | Before (ns/merge) | After (ns/merge) | Diff percentage |
    | :---------------- | :------: | :----: | ----: |
    | Logs       |   3643.971   | 2513.947 | -31% |
    | Metrics  |   24550.572  | 5847.417 | -76% |
    | Traces   |  5172.710 | 3233.694  | -37% |
    
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/12137
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    This PR adds four benchmarks for each event type
    
    1. 1000 requests are merged into the same batch.
    2. every incoming request is slightly above the limit and will cause a
    split.
    3. the incoming request is split into 10 batches
    
    Benchmark 1 is designed to test the performance of merging, while
    Benchmark 2 and 3 are primarily designed to test the performance of
    splitting. Benchmarks indicate that the optimization implemented in this
    PR improves merging performance.
    
    Before:
    ```
    BenchmarkSplittingBasedOnItemCountManySmallLogs-10                           316           3643971 ns/op
    BenchmarkSplittingBasedOnItemCountManyLogsSlightlyAboveLimit-10               43          25643229 ns/op
    BenchmarkSplittingBasedOnItemCountHugeLogs-10                                 39          27257268 ns/op
    BenchmarkSplittingBasedOnItemCountManySmallMetrics-10                         43          24783318 ns/op
    BenchmarkSplittingBasedOnItemCountManyMetricsSlightlyAboveLimit-10            16          67046630 ns/op
    BenchmarkSplittingBasedOnItemCountHugeMetrics-10                              13          81208615 ns/op
    BenchmarkSplittingBasedOnItemCountManySmallTraces-10                         235           5172710 ns/op
    BenchmarkSplittingBasedOnItemCountManyTracesSlightlyAboveLimit-10             37          31968305 ns/op
    BenchmarkSplittingBasedOnItemCountHugeTraces-10                               30          35512446 ns/op
    ```
    
    After:
    ```
    BenchmarkSplittingBasedOnItemCountManySmallLogs-10                           507           2513947 ns/op
    BenchmarkSplittingBasedOnItemCountManyLogsSlightlyAboveLimit-10               40          26553098 ns/op
    BenchmarkSplittingBasedOnItemCountHugeLogs-10                                 38          27769027 ns/op
    BenchmarkSplittingBasedOnItemCountManySmallMetrics-10                        189           5847417 ns/op
    BenchmarkSplittingBasedOnItemCountManyMetricsSlightlyAboveLimit-10            16          63132219 ns/op
    BenchmarkSplittingBasedOnItemCountHugeMetrics-10                              14          81363741 ns/op
    BenchmarkSplittingBasedOnItemCountManySmallTraces-10                         367           3253624 ns/op
    BenchmarkSplittingBasedOnItemCountManyTracesSlightlyAboveLimit-10             38          32017175 ns/op
    BenchmarkSplittingBasedOnItemCountHugeTraces-10                               31          34387539 ns/op
    ```
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
