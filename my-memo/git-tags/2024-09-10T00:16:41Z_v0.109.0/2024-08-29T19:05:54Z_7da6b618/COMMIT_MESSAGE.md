commit 7da6b618a7eef2f97aa6666ac7edef50aa6b3cae
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Thu Aug 29 12:05:54 2024 -0700

    [service] deprecate TelemetrySettings.MeterProvider (#10912)
    
    This is replaced by a LeveledMeterProvider method on the struct instead.
    This
    reduces the complexity from the view of component authors, in that
    there's no need
    to check the level before invoking the meter to record a metric.
    
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/9510
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
