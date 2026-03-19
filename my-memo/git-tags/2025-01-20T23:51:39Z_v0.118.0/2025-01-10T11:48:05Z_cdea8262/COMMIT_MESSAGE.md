commit cdea82626978ceec1e49f5d52cf5ca8d52b1b3af
Author: Andrzej Stencel <andrzej.stencel@elastic.co>
Date:   Fri Jan 10 12:48:05 2025 +0100

    [chore] [processor/memory_limiter] docs: fix default value of `spike_limit_percentage` (#12065)
    
    Verified with this config:
    
    ```yaml
    processors:
      memory_limiter:
        check_interval: 1s
        limit_percentage: 50
    ```
    
    Output:
    
    ```console
    2025-01-10T10:55:58.072+0100    info    memorylimiter@v0.117.0/memorylimiter.go:151     Using percentage memory limiter {"kind": "processor", "name": "memory_limiter", "pipeline": "logs", "total_memory_mib": 31755, "limit_percentage": 50, "spike_limit_percentage": 0}
    2025-01-10T10:55:58.072+0100    info    memorylimiter@v0.117.0/memorylimiter.go:75      Memory limiter configured       {"kind": "processor", "name": "memory_limiter", "pipeline": "logs", "limit_mib": 15877, "spike_limit_mib": 3175, "check_interval": 1}
    ```
