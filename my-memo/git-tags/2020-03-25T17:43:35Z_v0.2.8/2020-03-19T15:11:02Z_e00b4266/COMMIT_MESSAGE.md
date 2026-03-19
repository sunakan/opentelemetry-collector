commit e00b4266185c1de32525d4f90df8489aab7d5743
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Mar 19 08:11:02 2020 -0700

    Add StringMap and use it instead of LablesMap (#654)
    
    This change plugs the new StringMap that is used in the Metrics, and we can see a very nice benefit from this in the metrics benchmarks:
    
    Before:
    ```
    go test -benchmem -bench=. -run=notests ./internal/data/...
    goos: darwin
    goarch: amd64
    pkg: github.com/open-telemetry/opentelemetry-collector/internal/data
    BenchmarkOtlpToFromInternal_PassThrough-16                              317034267                3.64 ns/op            0 B/op          0 allocs/op
    BenchmarkOtlpToFromInternal_Int64Points_MutateOneLabel-16                1399080               849 ns/op            1088 B/op         16 allocs/op
    BenchmarkOtlpToFromInternal_DoublePoints_MutateOneLabel-16               1414124               846 ns/op            1088 B/op         16 allocs/op
    BenchmarkOtlpToFromInternal_HistogramPoints_MutateOneLabel-16            1383159               862 ns/op            1152 B/op         16 allocs/op
    BenchmarkOtlpToFromInternal_SummaryPoints_MutateOneLabel-16              1377898               935 ns/op            1152 B/op         16 allocs/op
    PASS
    ok      github.com/open-telemetry/opentelemetry-collector/internal/data 10.045s
    ```
    
    After:
    ```
    go test -benchmem -bench=. -run=notests ./internal/data/...
    goos: darwin
    goarch: amd64
    pkg: github.com/open-telemetry/opentelemetry-collector/internal/data
    BenchmarkOtlpToFromInternal_PassThrough-16                              318627304                3.66 ns/op            0 B/op          0 allocs/op
    BenchmarkOtlpToFromInternal_Int64Points_MutateOneLabel-16                2147724               551 ns/op             688 B/op         13 allocs/op
    BenchmarkOtlpToFromInternal_DoublePoints_MutateOneLabel-16               2170123               554 ns/op             688 B/op         13 allocs/op
    BenchmarkOtlpToFromInternal_HistogramPoints_MutateOneLabel-16            1902834               638 ns/op             768 B/op         14 allocs/op
    BenchmarkOtlpToFromInternal_SummaryPoints_MutateOneLabel-16              1880725               639 ns/op             768 B/op         14 allocs/op
    PASS
    ok      github.com/open-telemetry/opentelemetry-collector/internal/data 11.143s
    ```
