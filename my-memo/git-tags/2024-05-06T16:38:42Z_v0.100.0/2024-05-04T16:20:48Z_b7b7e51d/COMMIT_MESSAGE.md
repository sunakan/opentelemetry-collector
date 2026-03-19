commit b7b7e51d1d54e7bcb3df8950e9f31661e1ac4c7e
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Sat May 4 09:20:48 2024 -0700

    [chore] [exporterhelper] Integrate capacity limiting into the communication channel (#9232)
    
    Integrate capacity limiting into internal channels used by both memory
    and persistent queues. Otherwise, with the independent capacity limiter,
    it's hard to ensure that queue size is always accurate going forward.
    
    Benchmarks before:
    ```
    goos: darwin
    goarch: arm64
    Benchmark_QueueUsage_1000_requests-10               3252            325010 ns/op          246059 B/op         10 allocs/op
    Benchmark_QueueUsage_100000_requests-10               39          29811116 ns/op        24002870 B/op         10 allocs/op
    Benchmark_QueueUsage_10000_items-10                 3404            349753 ns/op          246052 B/op         10 allocs/op
    Benchmark_QueueUsage_1M_items-10                      40          29415583 ns/op        24002858 B/op         10 allocs/op
    BenchmarkPersistentQueue_TraceSpans
    BenchmarkPersistentQueue_TraceSpans/#traces:_1_#spansPerTrace:_1-10               338180              3836 ns/op            2851 B/op         78 allocs/op
    BenchmarkPersistentQueue_TraceSpans/#traces:_1_#spansPerTrace:_10-10               81369             15822 ns/op           14598 B/op        289 allocs/op
    BenchmarkPersistentQueue_TraceSpans/#traces:_10_#spansPerTrace:_10-10              13066             90155 ns/op          130087 B/op       2417 allocs/op
    ```
    
    Benchmarks after:
    ```
    Benchmark_QueueUsage_1000_requests-10               4210            278175 ns/op          246055 B/op         10 allocs/op
    Benchmark_QueueUsage_100000_requests-10               42          25835945 ns/op        24002968 B/op         10 allocs/op
    Benchmark_QueueUsage_10000_items-10                 4376            279571 ns/op          246056 B/op         10 allocs/op
    Benchmark_QueueUsage_1M_items-10                      42          26483907 ns/op        24002995 B/op         10 allocs/op
    BenchmarkPersistentQueue_TraceSpans
    BenchmarkPersistentQueue_TraceSpans/#traces:_1_#spansPerTrace:_1-10               328268              4251 ns/op            2854 B/op         78 allocs/op
    BenchmarkPersistentQueue_TraceSpans/#traces:_1_#spansPerTrace:_10-10              101683             12238 ns/op           14582 B/op        289 allocs/op
    BenchmarkPersistentQueue_TraceSpans/#traces:_10_#spansPerTrace:_10-10              13382             86464 ns/op          130154 B/op       2417 allocs/op
    ```
