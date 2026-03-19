commit 5db1af001bcf627c29e82c2492b29c4e8744c578
Author: Daniel Kłobuszewski <danielmk@google.com>
Date:   Mon Apr 19 21:24:22 2021 +0200

    Optimize dpgSignature function in Prometheus receiver (#2945)
    
    This function is invoked very often, which leads to high CPU usage when
    collecting Prometheus metrics.
    
    Benchmark results on my machine show 3x less CPU and almost 4x less
    memory used. Since I'm also changing the format of returned values
    (dropping superfluous characters), it will reduce overall memory usage
    of the receiver, because they are used as map keys.
    
    Benchmark result before this change:
    
    Benchmark_dpgSignature-6         1284531               969.6 ns/op           120 B/op          7 allocs/op
    
    Benchmark result after this change:
    
    Benchmark_dpgSignature-6         3515179               313.9 ns/op            32 B/op          2 allocs/op
