commit 069408608b2822fa7401ec983b3f11a0f2b5024e
Author: Andrew Wilkins <axw@elastic.co>
Date:   Thu Sep 25 23:15:03 2025 +0800

    service/telemetry: deprecate TracesConfig (#13904)
    
    #### Description
    
    service/telemetry.TracesConfig is deprecated. This type alias has been
    added to otelconftelemetry.TracesConfig as part of #4970, which is where
    the otelconf-based telemetry implementation now lives.
    
    #### Link to tracking issue
    
    Relates to #4970
    
    #### Testing
    
    N/A
    
    #### Documentation
    
    N/A
