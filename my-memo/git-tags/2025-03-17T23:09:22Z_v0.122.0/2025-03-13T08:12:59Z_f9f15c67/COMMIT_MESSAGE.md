commit f9f15c67de3791720a86493bc9436aeebf2588cd
Author: Damien Mathieu <42@dmathieu.com>
Date:   Thu Mar 13 09:12:59 2025 +0100

    Switch the pprofile.AddAttribute to use pcommon.Value rather than raw data (#12608)
    
    #### Description
    
    As discussed in
    https://github.com/open-telemetry/opentelemetry-collector/issues/12561,
    this switches the `pprofile.AddAttribute` method to use `pcommon.Value`
    rather than raw data.
    
    I didn't add a changelog entry, because this method has not been
    released yet. So the [introduction changelog
    entry](https://github.com/open-telemetry/opentelemetry-collector/blob/main/.chloggen/pprofile-add-attribute.yaml)
    should be enough.
    
    
    #### Testing
    
    Benchmark tests:
    
    ```
    goos: darwin
    goarch: arm64
    pkg: go.opentelemetry.io/collector/pdata/pprofile
    cpu: Apple M1 Max
    BenchmarkAddAttribute/with_a_new_string_attribute-10            47255384                25.08 ns/op           16 B/op          1 allocs/op
    BenchmarkAddAttribute/with_an_existing_attribute-10             46872556                25.16 ns/op           16 B/op          1 allocs/op
    BenchmarkAddAttribute/with_a_duplicate_attribute-10             47020178                25.18 ns/op           16 B/op          1 allocs/op
    BenchmarkAddAttribute/with_a_hundred_attributes_to_loop_through-10               9166004               131.2 ns/op            16 B/op          1 allocs/op
    PASS
    ok      go.opentelemetry.io/collector/pdata/pprofile    6.246s
    ```
