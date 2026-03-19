commit a0f4cf0384e4300b0fb00a230460cc25caa5ecd9
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu Apr 30 20:36:37 2020 -0700

    Preset capacity for ApptibuteMap and StringMap to improve performance (#901)
    
    Before benchmarks:
    BenchmarkProtoBatchToInternalTraces-12            497078              2312 ns/op            2096 B/op         35 allocs/op
    BenchmarkOcNodeResourceToInternal-12          698066          1889 ns/op        1304 B/op         17 allocs/op
    BenchmarkSpansWithAttributesOCToInternal-12       282246          4596 ns/op        2328 B/op         30 allocs/op
    BenchmarkMetricHistogramOCToInternal-12       363352          3540 ns/op        3544 B/op         59 allocs/op
    
    After benchmarks:
    BenchmarkProtoBatchToInternalTraces-12        646017          1737 ns/op        2064 B/op         32 allocs/op
    BenchmarkOcNodeResourceToInternal-12         1075398          1126 ns/op        1152 B/op         13 allocs/op
    BenchmarkSpansWithAttributesOCToInternal-12       305158          3897 ns/op        2216 B/op         26 allocs/op
    BenchmarkMetricHistogramOCToInternal-12       320634          3382 ns/op        3648 B/op         56 allocs/op
