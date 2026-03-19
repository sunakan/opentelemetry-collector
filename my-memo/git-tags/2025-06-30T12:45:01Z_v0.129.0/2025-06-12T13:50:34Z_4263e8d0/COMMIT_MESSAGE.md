commit 4263e8d0f1bb5717d3719c47f170d00ccc1d9dec
Author: Damien Mathieu <42@dmathieu.com>
Date:   Thu Jun 12 15:50:34 2025 +0200

    Introduce FromLocationIndices and PutLocation (#13150)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This introduces the `FromLocationIndices` and `PutLocation` methods, as
    we have for attributes.
    
    https://github.com/open-telemetry/opentelemetry-collector/blob/main/pdata/pprofile/attributes.go
    
    The intent is to be able to use this to perform merging/batching of
    profiles.
    I will be adding similar methods for the other tables once the concept
    of this first PR is validated.
    
    ## Benchmark Results
    
    ```
    goos: darwin
    goarch: arm64
    pkg: go.opentelemetry.io/collector/pdata/pprofile
    cpu: Apple M1 Max
    BenchmarkFromLocationIndices-10                                                  7058838               171.7 ns/op           308 B/op          7 allocs/op
    BenchmarkPutLocation/with_a_new_location-10                                     47819084                24.13 ns/op           16 B/op          1 allocs/op
    BenchmarkPutLocation/with_an_existing_location-10                               47871942                23.71 ns/op           16 B/op          1 allocs/op
    BenchmarkPutLocation/with_a_duplicate_location-10                               49755453                23.80 ns/op           16 B/op          1 allocs/op
    BenchmarkPutLocation/with_a_hundred_locations_to_loop_through-10                47431298                24.13 ns/op           16 B/op          1 allocs/op
    ```
    
    ---------
    
    Co-authored-by: Tim Rühsen <tim.ruehsen@gmx.de>
