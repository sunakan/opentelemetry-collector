commit f2c56a3752350c4e2b060127cb81df5e56fcce5e
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Tue Jul 16 10:21:42 2024 -0500

    Enhance builder to capture go module for each component type (#10599)
    
    Resolves #10570
    
    Alternative to #10598
    
    This implementation is more reliable that #10598 because it gets
    information directly from the builder manifest. It relies on additional
    structure in the `component.go` file, ultimately encoded in
    `otelcol.Factories`.
    
    An alternative would be to push the enhancements deeper, into the
    `<kind>.Factories` implementations, so that the module information is
    available directly alongside the Factory.
