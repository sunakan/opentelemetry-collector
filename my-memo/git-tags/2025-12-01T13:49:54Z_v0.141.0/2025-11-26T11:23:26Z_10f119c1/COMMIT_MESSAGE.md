commit 10f119c17fec2c764092e2121e0af8248df8fd86
Author: Damien Mathieu <42@dmathieu.com>
Date:   Wed Nov 26 12:23:26 2025 +0100

    chore: add switchDictionary benchmarks (#14201)
    
    This adds benchmarks for the `switchDictionary` method within pprofile.
    None of them should emit allocs ever.
    
    ```
    goos: darwin
    goarch: arm64
    pkg: go.opentelemetry.io/collector/pdata/pprofile
    cpu: Apple M1 Max
    BenchmarkFunctionSwitchDictionary-10                    87434488                13.44 ns/op            0 B/op          0 allocs/op
    BenchmarkKeyValueAndUnitSwitchDictionary-10             584721352                2.047 ns/op           0 B/op          0 allocs/op
    BenchmarkLineSwitchDictionary-10                        577840999                2.073 ns/op           0 B/op          0 allocs/op
    BenchmarkLocationSwitchDictionary-10                    55512399                21.56 ns/op            0 B/op          0 allocs/op
    BenchmarkMappingSwitchDictionary-10                     26952688                44.67 ns/op            0 B/op          0 allocs/op
    BenchmarkProfileSwitchDictionary-10                     24649387                48.70 ns/op            0 B/op          0 allocs/op
    BenchmarkProfilesSwitchDictionary-10                    58513749                20.36 ns/op            0 B/op          0 allocs/op
    BenchmarkResourceProfilesSwitchDictionary-10            67610554                16.99 ns/op            0 B/op          0 allocs/op
    BenchmarkSampleSwitchDictionary-10                      468034540                2.573 ns/op           0 B/op          0 allocs/op
    BenchmarkScopeProfilesSwitchDictionary-10               90358615                13.13 ns/op            0 B/op          0 allocs/op
    BenchmarkStackSwitchDictionary-10                       35702508                33.42 ns/op            0 B/op          0 allocs/op
    BenchmarkValueTypeSwitchDictionary-10                   91959018                12.88 ns/op            0 B/op          0 allocs/op
    ```
