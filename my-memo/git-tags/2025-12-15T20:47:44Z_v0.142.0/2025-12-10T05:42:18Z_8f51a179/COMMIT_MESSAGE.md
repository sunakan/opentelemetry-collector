commit 8f51a1792addcfc6beb636fd4c57b13941af78d3
Author: Andrew Wilkins <axw@elastic.co>
Date:   Wed Dec 10 13:42:18 2025 +0800

    otelcol: remove dependency on otelconftelemetry (#14256)
    
    #### Description
    
    Remove the dependency on the otelconftelemetry config struct when
    checking if logs should go to the Windows Event Log. Instead, we enable
    otelcol to intercept the zap.Config and dynamically inject options.
    
    #### Link to tracking issue
    
    Fixes #14002
    
    #### Testing
    
    Covered by
    https://github.com/open-telemetry/opentelemetry-collector/blob/a0cbea73c189551d751d09659e306f48f594fd62/otelcol/collector_windows_service_test.go#L27
    
    #### Documentation
    
    N/A
