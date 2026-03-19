commit cb24d0c7d783b8519bafada33c6579ff215b1ab6
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Fri Aug 16 01:27:01 2024 -0600

    [component] Remove ReportStatus from component.TelemetrySettings (#10777)
    
    #### Description
    
    This PR removes `ReportStatus` from `component.TelemetrySettings` and
    instead expects components to check if their `component.Host` implements
    a new `componentstatus.Reporter` interface.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/pull/10725
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/pull/10413
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    unit tests and a sharedinstance e2e test.
    
    The contrib tests will fail because this is a breaking change. If we
    merge this I and @mwear can commit to updating contrib before the next
    release.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
