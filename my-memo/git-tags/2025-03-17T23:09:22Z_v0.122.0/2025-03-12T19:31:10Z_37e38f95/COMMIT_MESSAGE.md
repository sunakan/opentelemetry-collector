commit 37e38f95400d6e56f126fff032dbb7622250da7e
Author: Damien Mathieu <42@dmathieu.com>
Date:   Wed Mar 12 20:31:10 2025 +0100

    Introduce `Equal` comparison in pcommon types (#12594)
    
    #### Description
    
    This introduces `.Equal()` methods to most pcommon types, so equality
    comparison can be performed with no allocations.
    
    The types `Equal` is added to are:
    
    * `Value`
    * `ByteSlice`
    * `Float64Slice`
    * `Int32Slice`
    * `Int64Slice`
    * `StringSlice`
    * `Uint64Slice`
    * `Map`
    * `Slice`
    
    The original intent was to add it to `Value`. However, to be able to
    handle every type in there, I had to also add it to the other types,
    some of which are coming too because they are auto-generated.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #12561
    
    This is the same thing as #12568, but with comparison of pcommon types
    rather than raw ones.
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Here are the results from the new benchmarks.
    
    ```
    goos: darwin
    goarch: arm64
    pkg: go.opentelemetry.io/collector/pdata/pcommon
    cpu: Apple M1 Max
    BenchmarkByteSliceEqual-10              513754251                2.181 ns/op           0 B/op          0 allocs/op
    BenchmarkFloat64SliceEqual-10           550760200                2.189 ns/op           0 B/op          0 allocs/op
    BenchmarkInt32SliceEqual-10             550836993                2.186 ns/op           0 B/op          0 allocs/op
    BenchmarkInt64SliceEqual-10             536615931                2.178 ns/op           0 B/op          0 allocs/op
    BenchmarkStringSliceEqual-10            166586130                7.055 ns/op           0 B/op          0 allocs/op
    BenchmarkUInt64SliceEqual-10            550221884                2.191 ns/op           0 B/op          0 allocs/op
    BenchmarkMapEqual-10                    100000000               10.29 ns/op            0 B/op          0 allocs/op
    BenchmarkSliceEqual-10                  165937951                7.185 ns/op           0 B/op          0 allocs/op
    BenchmarkValueEqual/nil-10              425391500                2.817 ns/op           0 B/op          0 allocs/op
    BenchmarkValueEqual/strings-10          226853427                5.441 ns/op           0 B/op          0 allocs/op
    BenchmarkValueEqual/booleans-10         296628630                4.080 ns/op           0 B/op          0 allocs/op
    BenchmarkValueEqual/ints-10             296841543                4.070 ns/op           0 B/op          0 allocs/op
    BenchmarkValueEqual/doubles-10          296242837                4.050 ns/op           0 B/op          0 allocs/op
    BenchmarkValueEqual/byte_slices-10              173515455                6.855 ns/op           0 B/op          0 allocs/op
    BenchmarkValueEqual/slices-10                   83512392                14.10 ns/op            0 B/op          0 allocs/op
    BenchmarkValueEqual/maps-10                     63556654                18.41 ns/op            0 B/op          0 allocs/op
    PASS
    ok      go.opentelemetry.io/collector/pdata/pcommon     24.650s
    ```
