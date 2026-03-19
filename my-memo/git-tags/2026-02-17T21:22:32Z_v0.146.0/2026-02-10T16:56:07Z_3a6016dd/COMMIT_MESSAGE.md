commit 3a6016ddd19ac806401ddb642b349f36dc8bf985
Author: Andrew Wilkins <axw@elastic.co>
Date:   Wed Feb 11 00:56:07 2026 +0800

    [chore] service: refactor otelconftelemetry-related code (#14308)
    
    #### Description
    
    Refactor some code so we can reduce the dependency tree (in a followup).
    
    Replace TestServiceTelemetryConsistentInstanceID in the service package
    with a functional test under internal/e2e. The new test verifies
    telemetry by running the collector and sending a request to the otlp
    receiver, and then checking the resulting internal telemetry is as
    expected. The purpose of this change is to test behaviour, rather than
    implementation, to simplify further refactoring.
    
    Move service/telemetry/internal/migration to
    service/telemetry/otelconftelemetry/internal/migration, since it's only
    used by otelconftelemetry.
    
    #### Link to tracking issue
    
    Part of #13809
    
    #### Testing
    
    N/A
    
    #### Documentation
    
    N/A
