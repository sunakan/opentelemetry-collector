commit 3cb1250b07308166f08cbccc71ae4f8b6338056a
Author: Carson Ip <carsonip@users.noreply.github.com>
Date:   Thu Mar 14 20:03:49 2024 +0000

    [exporterhelper] Fix race in concurrency check in batch sender leading to smaller batch sizes (#9761)
    
    **Description:** <Describe what has changed.>
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    
    Although activeRequests is atomic, it is possible for 2 arriving
    requests to both increment activeRequests, and when entering the
    critical section of bs.activeRequests.Load() >= bs.concurrencyLimit,
    both times it evaluates to true. The correct behavior should be that
    only the 2nd check is true.
    
    Remove the workaround in tests that bypassed the bug.
    
    ---
    
    Even with this change, the results are slightly better but still depend
    on goroutine scheduling.
