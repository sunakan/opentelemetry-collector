commit 2d3509cb4691d1fc336ede2ae7cdf3181cef02bb
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu Apr 30 16:09:23 2020 -0700

    Improve performance of jaeger to internal traces translation (#900)
    
    Results of running BenchmarkProtoBatchToInternalTraces:
    
    Before:
    BenchmarkProtoBatchToInternalTraces-12        329313          3346 ns/op        3352 B/op         43 allocs/op
    
    After:
    BenchmarkProtoBatchToInternalTraces-12        646017          1737 ns/op        2064 B/op         32 allocs/op 6e144e
