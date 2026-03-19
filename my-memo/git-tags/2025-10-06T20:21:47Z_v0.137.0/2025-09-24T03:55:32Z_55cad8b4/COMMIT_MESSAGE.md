commit 55cad8b4475597ee90858d4dbc215ebf65232ee7
Author: Andrew Wilkins <axw@elastic.co>
Date:   Wed Sep 24 11:55:32 2025 +0800

    [chore] service/telemetry: don't return LoggerProvider (#13871)
    
    #### Description
    
    Revert CreateLogger to returning a zap.Logger (now with a ShutdownFunc),
    and don't return the LoggerProvider. This means the componentattribute
    wrapping needs to live inside otelconftelemetry.
    
    #### Link to tracking issue
    
    See
    https://github.com/open-telemetry/opentelemetry-collector/issues/4970#issuecomment-3313196547
    
    #### Testing
    
    N/A
    
    #### Documentation
    
    N/A
