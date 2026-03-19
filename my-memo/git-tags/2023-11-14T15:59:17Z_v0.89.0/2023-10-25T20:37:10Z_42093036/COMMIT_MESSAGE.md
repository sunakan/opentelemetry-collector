commit 420930365ae4fd7819d8ee79953aef053bd4fc3a
Author: Alex Boten <aboten@lightstep.com>
Date:   Wed Oct 25 13:37:10 2023 -0700

    [obsreporttest] ensure tests validate either oc or otel (#8758)
    
    This change adds a separate prometheus registry for testing the otel vs
    the oc path through the code. Previous to this change, the
    otelPrometheusChecker was using the opencensus prometheus exporter which
    was really confusing and could possibly hide problems.
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
