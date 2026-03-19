commit 52a9520fdbf449fb7078be9f12d0e201fc90daff
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Tue May 28 08:59:50 2024 -0700

    mdatagen: support setting telemetry level in telemetry builder (#10234)
    
    This allows components to set the minimum level needed for them to
    produce telemetry. By default, this is set to
    `configtelemetryLevelBasic`. If the telemetry level is below that
    minimum level, then the noop meter is used for metrics.
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
