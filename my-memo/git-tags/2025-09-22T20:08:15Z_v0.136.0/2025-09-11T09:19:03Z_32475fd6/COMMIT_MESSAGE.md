commit 32475fd6e654dc62e5b165625284a8d682237df5
Author: Andrew Wilkins <axw@elastic.co>
Date:   Thu Sep 11 17:19:03 2025 +0800

    [chore] otelconftelemetry: refactor internals (#13765)
    
    #### Description
    
    Refactor the internals of the package to create independent SDKs for
    each of the logger, meter, and tracer providers. I have introduced new
    interfaces to the telemetry package to expose the Shutdown methods. This
    will be important once we return the providers directly - they will need
    to support being independently shut down.
    
    This is prep work for
    https://github.com/open-telemetry/opentelemetry-collector/issues/13722,
    to split apart the `telemetry.Providers` interface into per-signal
    providers. In a followup, I will update the telemetry.Factory interface.
    See https://github.com/open-telemetry/opentelemetry-collector/pull/13739
    for the end result.
    
    #### Link to tracking issue
    
    Part of
    https://github.com/open-telemetry/opentelemetry-collector/issues/13722
    
    #### Testing
    
    Unit tests only.
    
    #### Documentation
    
    N/A
