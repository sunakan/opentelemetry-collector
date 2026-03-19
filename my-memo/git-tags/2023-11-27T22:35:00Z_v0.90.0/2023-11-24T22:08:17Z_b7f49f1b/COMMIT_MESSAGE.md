commit b7f49f1bc8164b299b9260c331ce47296511b5e8
Author: Alex Boten <aboten@lightstep.com>
Date:   Fri Nov 24 14:08:17 2023 -0800

    [service] use `WithNamespace` instead of `WrapRegistererWithPrefix` (#8988)
    
    Using this functionality in the otel prom exporter fixes a bug where the
    target_info was prefixed as otelcol_target_info previously.
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
