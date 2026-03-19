commit 7e3e725a2952728560b9f5f71867ad6358b1977f
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Nov 22 14:18:54 2023 -0800

    [chore] [exporterhelper] Simplify queue consumption logic (#8982)
    
    Remove the QueueRequest wrapper. Pass consumeFunc to the queue instead
    of asking for the QueueRequest wrapper with callback. The callback isn't
    needed for the memory queue, and the field for the callback is occupying
    the memory even it's always empty. The bounded queue benchmark results
    show the RAM savings:
    
    Before:
    ```
    Benchmark_QueueUsage_50000_1_50000
    Benchmark_QueueUsage_50000_1_50000-10                  1        69813548417 ns/op        2806232 B/op      99753 allocs/op
    ```
    
    After:
    ```
    Benchmark_QueueUsage_50000_1_50000
    Benchmark_QueueUsage_50000_1_50000-10                  1        65498055709 ns/op        2404832 B/op      99754 allocs/op
    ```
    
    Cut from
    https://github.com/open-telemetry/opentelemetry-collector/pull/8942
