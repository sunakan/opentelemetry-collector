commit 456e75c6d421567108dac4ec79f5c298ba800ea3
Author: Alex Boten <aboten@lightstep.com>
Date:   Fri Sep 15 13:49:24 2023 -0700

    add debug exporter, move code from logging exporter into internal (#8378)
    
    Alternative to
    https://github.com/open-telemetry/opentelemetry-collector/pull/8375
    
    This moves most of the code from the logging exporter into two internal
    packages that will eventually end up in the `debugexporter` once the
    `loggingexporter` has been removed.
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/7769
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
