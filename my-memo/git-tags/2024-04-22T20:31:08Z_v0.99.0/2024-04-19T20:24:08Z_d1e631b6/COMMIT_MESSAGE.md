commit d1e631b61158d1275da2e876939d32e7168be509
Author: Kristina Pathak <kristina.pathak@lightstep.com>
Date:   Fri Apr 19 13:24:08 2024 -0700

    [builder] only compare major and minor versions from gomod (#9997)
    
    #### Description
    When building from a commit hash, I got this error:
    ```
    Error: mismatch in go.mod and builder configuration versions: core collector version calculated by component dependencies "v0.98.1-0.20240416174005-d0f15e2463f8" does not match configured version "v0.98.0". Use --skip-strict-versioning to temporarily disable this check. This flag will be removed in a future minor version
    ```
    It may be more useful to only compare the major and minor versions
    
    #### Link to tracking issue
    https://github.com/open-telemetry/opentelemetry-collector/issues/9896
    Found in
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/32544
    
    #### Testing
    Manually tested new build
    
    #### Documentation
    updated readme
