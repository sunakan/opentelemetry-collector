commit a27fb4cf331333acd035aadff6c363d203df62ff
Author: Alex Boten <aboten@lightstep.com>
Date:   Tue Apr 11 08:08:41 2023 -0700

    use the otel opencensus bridge (#7483)
    
    This change configures the opencensus bridge when useOtelForInternalMetrics is enabled. This allows us to stop relying on prometheus as the bridge.
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
