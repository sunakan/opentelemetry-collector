commit bef9373cfc20301157e4ff49759b2f490ed17ea5
Author: Foad Nosrati Habibi <foad.nh@gmail.com>
Date:   Thu Sep 8 09:25:55 2022 +1000

    Builder skip Go binary validation if not used (#6026)
    
    * Builder skip Go binary validation if not used
    
    As a follow-up on (#6009), when the builder is used with `-skip-compilation` and `-skip-get-modules` flags, it only generates distribution go codes. So there is no need for Go binary.
    Isolated build environments like [Bazel](https://bazel.build/) or some CIs can skip passing Go binary to the builder.
    
    * Update config_test.go
    
    * Update config_test.go
    
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
