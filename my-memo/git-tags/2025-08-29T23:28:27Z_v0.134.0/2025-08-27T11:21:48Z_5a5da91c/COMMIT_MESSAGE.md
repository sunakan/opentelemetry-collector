commit 5a5da91c8895959c30c583fe9748d5aa265183b8
Author: Andrew Wilkins <axw@elastic.co>
Date:   Wed Aug 27 19:21:48 2025 +0800

    [chore] service/telemetry: encapsulate SDK creation (#13606)
    
    #### Description
    
    Encapsulate opentelemetry-go SDK creation in
    service/telemetry/otelconftelemetry.
    
    To enable this change, the Factory interface now provides
    `CreateProviders` method in place of the old `CreateLogger`,
    `CreateMeterProvider`, and `CreateTracerProvider` methods which have now
    been removed. `CreateProviders` returns an instance of the new
    `telemetry.Providers` interface, which provides access to telemetry
    providers.
    
    In a follow-up I will move the `Factory` interface from
    `service/telemetry/otelconftelemetry` to `service/telemetry`, and inject
    the default level-based metric views through `telemetry.Settings`.
    
    #### Link to tracking issue
    
    Part of #4970
    
    #### Testing
    
    N/A, non-functional change.
    
    #### Documentation
    
    N/A
