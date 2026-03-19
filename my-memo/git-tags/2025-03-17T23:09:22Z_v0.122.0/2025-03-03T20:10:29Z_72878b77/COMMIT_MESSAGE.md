commit 72878b771bfb6a1dcebb83e858ebcfd01e333023
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Mar 3 12:10:29 2025 -0800

    [chore] Improve logs bytes batch (#12529)
    
    **Before:**
    ```
    BenchmarkSplittingBasedOnItemCountManyLogsSlightlyAboveLimit
    BenchmarkSplittingBasedOnItemCountManyLogsSlightlyAboveLimit-12               50          23387806 ns/op        43531234 B/op     700471 allocs/op
    BenchmarkSplittingBasedOnByteSizeManyLogsSlightlyAboveLimit
    BenchmarkSplittingBasedOnByteSizeManyLogsSlightlyAboveLimit-12                30          38350051 ns/op        43616507 B/op     702427 allocs/op
    ```
    
    **After:**
    ```
    BenchmarkSplittingBasedOnItemCountManyLogsSlightlyAboveLimit
    BenchmarkSplittingBasedOnItemCountManyLogsSlightlyAboveLimit-12               51          23075717 ns/op        43531254 B/op     700472 allocs/op
    BenchmarkSplittingBasedOnByteSizeManyLogsSlightlyAboveLimit
    BenchmarkSplittingBasedOnByteSizeManyLogsSlightlyAboveLimit-12                36          32852065 ns/op        43601205 B/op     702094 allocs/op
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
