commit 5753a58f712bf6f20f9daf2c660da1060cc1bebf
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Tue Jul 16 16:18:37 2024 -0700

    update all metrics to include otelcol_ prefix (#9759)
    
    This ensures the consistency for folks emitting metrics w/ OTLP until
    the OTEP to specify pipeline telemetry is completed.
    
    Waiting on
    https://github.com/open-telemetry/opentelemetry-collector/pull/9775
    before moving this forward
    
    Fixes #9315
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
