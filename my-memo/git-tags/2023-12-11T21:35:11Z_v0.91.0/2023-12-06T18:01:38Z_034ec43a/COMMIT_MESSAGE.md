commit 034ec43ae6473d40791041ee3d00260fb9d46596
Author: Alex Boten <aboten@lightstep.com>
Date:   Wed Dec 6 10:01:38 2023 -0800

    [exporterhelper] fix missed metric aggregations (#9048)
    
    This PR ensures that context cancellation in the exporter doesn't
    interfere with metric aggregation. The OTel SDK currently returns if
    there's an error in the context used in `Add` (see
    https://github.com/open-telemetry/opentelemetry-go/blob/6cee2b4a4c76b581115d0d0ca150ad8b2e683db6/sdk/metric/instrument.go#L241-L243).
    This means that if there's a cancelled context in an export, the metrics
    are not recorded.
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
