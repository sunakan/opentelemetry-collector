commit 66f2c45697db063cdc94f14a6a2ee5e60de01af3
Author: Andrew Wilkins <axw@elastic.co>
Date:   Wed Sep 10 16:57:20 2025 +0800

    [chore] otelcol: remove service telemetry config reference (#13776)
    
    #### Description
    
    Change grpclog.SetLogger to use the logger's level, rather than pulling
    the level out of the service telemetry config and passing that in. The
    logger will have that level already.
    
    This is also necessary as part of
    https://github.com/open-telemetry/opentelemetry-collector/issues/4970,
    since the telemetry config will become opaque.
    
    #### Link to tracking issue
    
    Part of
    https://github.com/open-telemetry/opentelemetry-collector/issues/4970
    
    #### Testing
    
    N/A
    
    #### Documentation
    
    N/A
