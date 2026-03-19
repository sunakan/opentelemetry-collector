commit 5ea1dbf832a733ed78228d5648161110be26bcbf
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Mar 16 19:20:34 2020 -0700

    Add initial set of benchmarks for MetricData v2 internal (#643)
    
    Benchmark results:
    
    $go test -benchmem -bench=. -run=notests ./internal/data/...
    goos: darwin
    goarch: amd64
    pkg: github.com/open-telemetry/opentelemetry-collector/internal/data
    BenchmarkOtlpToFromInternal_PassThrough-16                              290311723                4.03 ns/op            0 B/op          0 allocs/op
    BenchmarkOtlpToFromInternal_Int64Points_MutateOneLabel-16                1199534               970 ns/op            1216 B/op         18 allocs/op
    BenchmarkOtlpToFromInternal_DoublePoints_MutateOneLabel-16               1233117               967 ns/op            1216 B/op         18 allocs/op
    BenchmarkOtlpToFromInternal_HistogramPoints_MutateOneLabel-16            1000000              1223 ns/op            1392 B/op         20 allocs/op
    BenchmarkOtlpToFromInternal_SummaryPoints_MutateOneLabel-16              1000000              1011 ns/op            1280 B/op         19 allocs/op
    PASS
    ok      github.com/open-telemetry/opentelemetry-collector/internal/data 10.458s
