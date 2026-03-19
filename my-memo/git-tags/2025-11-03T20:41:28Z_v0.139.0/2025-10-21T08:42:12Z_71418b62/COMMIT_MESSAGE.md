commit 71418b629670f92173b921a7a69258cfc6730c69
Author: Andrew Wilkins <axw@elastic.co>
Date:   Tue Oct 21 16:42:12 2025 +0800

    otelcol: add telemetry.Factory to Factories (#13950)
    
    #### Description
    
    Add a `TelemetryFactory telemetry.Factory` field to `otelcol.Factories`.
    If it is nil, it will default to an `otelconftelemetry` factory.
    
    This enables overriding telemetry providers.
    
    #### Link to tracking issue
    
    Fixes #4970
    
    #### Testing
    
    - Ran the collector without any telemetry config, verified that logging
    still works as expected
    - Ran the collector with standard (otelconftelemetry) config, verified
    it is used as expected (I just smoke tested by enabling debug logging --
    more comprehensive unit tests exist)
    - Ran a modified version of the collector with a custom telemetry
    factory
    
    #### Documentation
    
    N/A
