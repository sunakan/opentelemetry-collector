commit a158ff3cfca350e4efd00445b6a912e5fe62fa31
Author: Alex Boten <aboten@lightstep.com>
Date:   Tue Dec 12 13:59:41 2023 -0800

    make useOtelForInternalMetrics as beta (#9037)
    
    The metrics are now consistent with the metrics produced by OpenCensus.
    We should move the featuregate forward.
    
    Note that the OpenTelemetry generated metrics includes grpc
    client/server metrics (for receivers/exporters that use grpc) and
    `target_info` metrics
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/7454
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
