commit 0b63adbfefc8a75a3ed1178e31282f5f0fbc7924
Author: Andrew Wilkins <axw@elastic.co>
Date:   Sat Aug 2 04:24:35 2025 +0800

    [chore] service/telemetry: remove deprecated feature gate check (#13549)
    
    #### Description
    
    The `service.noopTracerProvider` feature gate is now deprecated, and
    cannot be enabled, therefore we can remove any code that references it.
    
    #### Link to tracking issue
    
    Relates to
    https://github.com/open-telemetry/opentelemetry-collector/issues/13492
    
    #### Testing
    
    Manually verified the feature gate cannot be enabled.
    
    #### Documentation
    
    None
