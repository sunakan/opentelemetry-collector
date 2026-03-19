commit 4a3717978a51e6929c90bdaccfba3ea369044629
Author: Andrew Wilkins <axw@elastic.co>
Date:   Wed May 28 23:59:41 2025 +0800

    confighttp: make server span naming spec-compliant (#13088)
    
    #### Description
    
    Update the confighttp server span names to use the low-cardnality
    request pattern, rather than the full client-specified path, as
    described by the specification:
    https://opentelemetry.io/docs/specs/semconv/http/http-spans/#name.
    
    Requires
    https://github.com/open-telemetry/opentelemetry-go-contrib/pull/7192
    
    #### Link to tracking issue
    
    Fixes #12468
    
    #### Testing
    
    Added a unit test.
    
    #### Documentation
    
    None
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
