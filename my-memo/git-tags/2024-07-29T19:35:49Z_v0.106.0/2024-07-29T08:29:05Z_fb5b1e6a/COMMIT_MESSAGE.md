commit fb5b1e6aa550d68ff64200da31d50a445b4cf806
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Mon Jul 29 02:29:05 2024 -0600

    [service] Remove servicetelemetry.TelemetrySettings (#10728)
    
    #### Description
    Reorganizes service to not require `servicetelemetry.TelemetrySettings`
    and instead depend directly on `component.TelemetrySettings`
    
    Whether or not we move forward with
    https://github.com/open-telemetry/opentelemetry-collector/pull/10725 I
    think this is a useful change for service.
    
    #### Testing
    Unit tests
