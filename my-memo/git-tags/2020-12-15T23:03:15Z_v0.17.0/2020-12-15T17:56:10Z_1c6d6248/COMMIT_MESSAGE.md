commit 1c6d6248dc2cf5961dcd4f0be5d55db866b58f3f
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Dec 15 12:56:10 2020 -0500

    Introduce soft and hard limits for memory limiter (#2250)
    
    Contributes to https://github.com/open-telemetry/opentelemetry-collector/issues/1121
    
    Memory limiter processor previously had only one limit. When exceeding
    this limit it was previously continuously calling GC. This resulted in
    huge CPU consumption if the check interval was small and this was
    forcing to use large check intervals. This in turn was resulting in
    lethargic response to growing memory usage and the memory limiter was
    not very effective in situations when memory usage were growing rapidly
    (e.g. when there was a big spike or when the backend was down).
    
    I changed the logic of memory limiter to be based on 2 thresholds:
    soft and hard. While below soft threshold the memory limiter is fully disabled.
    Between soft and hard limiter the limiter begins dropping incoming data
    but does not perform GC. Only when exceed the hard limit we perform GC.
    The net result is that the actually used memory is limited at the level
    set by soft limit and fluctuates between soft and hard limit as the garbage
    is created and collected. Correspondingly GC runs much more infrequently, only
    when the hard limit is reached and such GC immediately collects significant
    amount of garbage (reduces memory usage close to soft limit) and thus does not
    require subsequent GC calls for quite some time.
    
    I did some performance tests with the old and new approaches with 4000 Mib limit,
    100,000 spans per second and with exporter completely blocked (no backend).
    
    With the old approach an interval of 100 ms causes about 450% of CPU usage
    once the memory limit is hit (while below limit the CPU usage is around 50%).
    Here is an extract of performance test output showing the moment when the limiter
    is hit:
    ```
    2020/12/03 20:20:47 Agent RAM (RES):3296 MiB, CPU:44.4% | Sent:   7022700 items | Received:         0 items (0/sec)
    2020/12/03 20:20:50 Agent RAM (RES):3481 MiB, CPU:43.0% | Sent:   7322500 items | Received:         0 items (0/sec)
    2020/12/03 20:20:53 Agent RAM (RES):3681 MiB, CPU:41.6% | Sent:   7614100 items | Received:         0 items (0/sec)
    2020/12/03 20:20:56 Agent RAM (RES):3703 MiB, CPU:47.7% | Sent:   7863600 items | Received:         0 items (0/sec)
    2020/12/03 20:20:59 Agent RAM (RES):3028 MiB, CPU:47.0% | Sent:   8062700 items | Received:         0 items (0/sec)
    2020/12/03 20:21:02 Agent RAM (RES):3644 MiB, CPU:246.9% | Sent:   8331600 items | Received:         0 items (0/sec) <-- likely a regular GC, not at limit yet
    2020/12/03 20:21:05 Agent RAM (RES):3555 MiB, CPU:72.8% | Sent:   8620500 items | Received:         0 items (0/sec)
    2020/12/03 20:21:08 Agent RAM (RES):3717 MiB, CPU:57.5% | Sent:   8895500 items | Received:         0 items (0/sec)
    2020/12/03 20:21:11 Agent RAM (RES):3877 MiB, CPU:126.9% | Sent:   9172900 items | Received:         0 items (0/sec) <-- hit limit
    2020/12/03 20:21:14 Agent RAM (RES):3900 MiB, CPU:127.6% | Sent:   9461100 items | Received:         0 items (0/sec)
    2020/12/03 20:21:17 Agent RAM (RES):3918 MiB, CPU:201.7% | Sent:   9728900 items | Received:         0 items (0/sec)
    2020/12/03 20:21:20 Agent RAM (RES):3938 MiB, CPU:326.0% | Sent:   9994700 items | Received:         0 items (0/sec)
    2020/12/03 20:21:23 Agent RAM (RES):3951 MiB, CPU:470.8% | Sent:  10253200 items | Received:         0 items (0/sec)
    2020/12/03 20:21:26 Agent RAM (RES):3955 MiB, CPU:440.0% | Sent:  10504400 items | Received:         0 items (0/sec)
    2020/12/03 20:21:29 Agent RAM (RES):3961 MiB, CPU:451.0% | Sent:  10766200 items | Received:         0 items (0/sec)
    2020/12/03 20:21:32 Agent RAM (RES):3965 MiB, CPU:465.8% | Sent:  11008400 items | Received:         0 items (0/sec)
    2020/12/03 20:21:35 Agent RAM (RES):3974 MiB, CPU:423.6% | Sent:  11272700 items | Received:         0 items (0/sec)
    ```
    Even the interval of 1 second was unusable with the old approach and we had to
    choose a longer interval to avoid performance degradation.
    
    With the new approach under the exact same conditions when using 100ms check interval
    the CPU usage is 50% when below memory limits and when the hard memory limits are
    hit the CPU usage increases to 68%. With 1 second check interval there is no measurable
    increase in CPU usage when memory limiter is hit (unlike 9x CPU increase with the old
    approach).
    
    Here is an extract of performance test output showing the moment when the limiter
    is hit:
    ```
    2020/12/03 20:28:35 Agent RAM (RES):1888 MiB, CPU:48.2% | Sent:   3796400 items | Received:         0 items (0/sec)
    2020/12/03 20:28:38 Agent RAM (RES):2029 MiB, CPU:47.1% | Sent:   4088600 items | Received:         0 items (0/sec)
    2020/12/03 20:28:41 Agent RAM (RES):2197 MiB, CPU:48.3% | Sent:   4388200 items | Received:         0 items (0/sec)
    2020/12/03 20:28:44 Agent RAM (RES):2370 MiB, CPU:45.7% | Sent:   4679900 items | Received:         0 items (0/sec)
    2020/12/03 20:28:47 Agent RAM (RES):2558 MiB, CPU:49.0% | Sent:   4972200 items | Received:         0 items (0/sec)
    2020/12/03 20:28:50 Agent RAM (RES):2771 MiB, CPU:47.4% | Sent:   5260700 items | Received:         0 items (0/sec)
    2020/12/03 20:28:53 Agent RAM (RES):2921 MiB, CPU:133.3% | Sent:   5547500 items | Received:         0 items (0/sec)
    2020/12/03 20:28:56 Agent RAM (RES):2922 MiB, CPU:50.1% | Sent:   5846700 items | Received:         0 items (0/sec)
    2020/12/03 20:28:59 Agent RAM (RES):2957 MiB, CPU:43.6% | Sent:   6131700 items | Received:         0 items (0/sec)
    2020/12/03 20:29:02 Agent RAM (RES):3144 MiB, CPU:50.0% | Sent:   6419400 items | Received:         0 items (0/sec)
    2020/12/03 20:29:05 Agent RAM (RES):3328 MiB, CPU:49.0% | Sent:   6719100 items | Received:         0 items (0/sec)
    2020/12/03 20:29:08 Agent RAM (RES):3488 MiB, CPU:38.6% | Sent:   7007300 items | Received:         0 items (0/sec)
    2020/12/03 20:29:11 Agent RAM (RES):3667 MiB, CPU:42.0% | Sent:   7306700 items | Received:         0 items (0/sec)
    2020/12/03 20:29:14 Agent RAM (RES):3813 MiB, CPU:37.4% | Sent:   7577700 items | Received:         0 items (0/sec)
    2020/12/03 20:29:17 Agent RAM (RES):3802 MiB, CPU:170.9% | Sent:   7860100 items | Received:         0 items (0/sec) <-- hit hard limit
    2020/12/03 20:29:20 Agent RAM (RES):3882 MiB, CPU:68.1% | Sent:   8160000 items | Received:         0 items (0/sec)
    2020/12/03 20:29:23 Agent RAM (RES):4007 MiB, CPU:42.3% | Sent:   8447900 items | Received:         0 items (0/sec)
    2020/12/03 20:29:26 Agent RAM (RES):4007 MiB, CPU:39.3% | Sent:   8747800 items | Received:         0 items (0/sec)
    2020/12/03 20:29:29 Agent RAM (RES):4008 MiB, CPU:34.3% | Sent:   9038400 items | Received:         0 items (0/sec)
    2020/12/03 20:29:32 Agent RAM (RES):4009 MiB, CPU:39.9% | Sent:   9317200 items | Received:         0 items (0/sec)
    ```
    This is a dramatically better picture compared to the old approach.
    
    With 1 second interval memory limiter's impact on CPU is not measurable with the
    new approach, whereas with the old approach it was still showing several times higher
    CPU when limit was hit.
    
    This makes small check intervals practically useful and allows to effectively
    suppress incoming surges of data.
