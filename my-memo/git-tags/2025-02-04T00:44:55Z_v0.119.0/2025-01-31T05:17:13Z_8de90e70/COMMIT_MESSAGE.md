commit 8de90e7034a3f0bfe355f1cca8cdcee4fcbe9fd4
Author: Damien Mathieu <42@dmathieu.com>
Date:   Fri Jan 31 06:17:13 2025 +0100

    Add FromAttributeIndices helper to pprofile (#12176)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Profiles attributes are stored in a single `AttributeTable` attribute,
    and then referenced in each substruct as `AttributeIndices`.
    
    This means to read them as a `pcommon.Map`, a bit of pre-processing is
    required.
    This adds an helper method so each component manipulating profiles
    doesn't have to reimplement it.
    
    Benchmark:
    
    ```
    go test -bench=BenchmarkFromAttributeIndices ./...
    goos: darwin
    goarch: arm64
    pkg: go.opentelemetry.io/collector/pdata/pprofile
    cpu: Apple M1 Max
    BenchmarkFromAttributeIndices-10         9789714               123.2 ns/op           140 B/op          4 allocs/op
    PASS
    ok      go.opentelemetry.io/collector/pdata/pprofile    1.952s
    PASS
    ok      go.opentelemetry.io/collector/pdata/pprofile/pprofileotlp       0.407s
    ```
