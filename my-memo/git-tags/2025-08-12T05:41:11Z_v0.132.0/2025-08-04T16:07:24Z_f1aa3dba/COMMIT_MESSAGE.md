commit f1aa3dba91776fae379e293c405f3f9d8c9dc158
Author: Andrew Wilkins <axw@elastic.co>
Date:   Tue Aug 5 00:07:24 2025 +0800

    [chore] service: move SDK creation to service/telemetry (#13536)
    
    #### Description
    
    Move SDK construction into service/telemetry. This is a step towards
    fully encapsulating the otelconf SDK in the service/telemetry package,
    so we can have different telemetry provider implementations that can be
    injected.
    
    #### Link to tracking issue
    
    Preparation work for
    https://github.com/open-telemetry/opentelemetry-collector/issues/4970
    
    #### Testing
    
    N/A, non-functional change.
    
    #### Documentation
    
    N/A
