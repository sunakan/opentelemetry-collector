commit 341b33f465480abc13817c7320c6b21388f7a317
Author: Adriel Perkins <adrielp@liatrio.com>
Date:   Wed Jul 10 12:03:10 2024 -0400

    [mdatagen] fix generated comp test for extensions and unused imports in templates (#10477)
    
    #### Description
    
    When upgrading beyond `v0.101.0` of `mdatagen` I ran into issues
    upgrading when running `golanglint-ci` because of unused imports.
    Namely, in `component_tests` the `component` was removed from [this
    commit](https://github.com/open-telemetry/opentelemetry-collector/compare/v0.101.0...v0.102.0?diff=split&w=#diff-abf7cf477183f2c7e2f9425655bea3a2e2060eaba8fb6aa9c9a9558017c21f1e)
    which was not caught by tests (it appears we only test receiver
    components & not others). The logic that generates tests for extensions,
    where I caught this error, ends up with a `generated_component_test`
    that does not use `component` in the package at all. I would've thought
    the contrib repo would've detected this issue since they also use
    `mdatagen` and there are extensions there + golangci-lint. I haven't dug
    into the why it wasn't caught there yet.
    
    > This is just a quick fix for extensions. I suspect this issue may pop
    up in other components as time goes on. Long term is more tests for
    other components.
    
    #### Testing
    I ran this locally against my own repo where the issue originally showed
    & ensured the value would be templated out appropriately.
    
    
    ![image](https://github.com/open-telemetry/opentelemetry-collector/assets/25961386/f82abb28-7b78-401f-8875-cb2c66f5cf9b)
