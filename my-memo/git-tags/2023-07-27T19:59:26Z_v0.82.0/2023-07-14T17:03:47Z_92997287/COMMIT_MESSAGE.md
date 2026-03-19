commit 929972873f7e2efb0e11062a925c2354b8bfc6b6
Author: Alex Boten <aboten@lightstep.com>
Date:   Fri Jul 14 10:03:47 2023 -0700

    [wip] add ability to configure prometheus export via `readers` (#7871)
    
    This enables end users to configure additional prometheus exporters for
    the collector's telemetry
    via the `readers` configuration option. Configuring prometheus through
    the existing method
    of setting the service::metrics::address will continue to work, and only
    log a warning for users
    who have enabled the
    `telemetry.useOtelWithSDKConfigurationForInternalTelemetry` feature
    gate.
    
    Linked issue: #7641
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
