commit 01a48d24363e7b1076bd10a92d69afbe3c3544e3
Author: Andrew Wilkins <axw@elastic.co>
Date:   Wed Sep 10 00:02:48 2025 +0800

    [chore] service: inject default views via settings (#13775)
    
    #### Description
    
    Instead of updating the telemetry config, pass the default views in via
    settings and have the telemetry implementation use it as appropriate.
    This is necessary to decouple the service package from the
    otelconftelemetry config.
    
    #### Link to tracking issue
    
    Part of
    https://github.com/open-telemetry/opentelemetry-collector/issues/4970
    
    #### Testing
    
    N/A, non-functional change.
    
    #### Documentation
    
    N/A
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
