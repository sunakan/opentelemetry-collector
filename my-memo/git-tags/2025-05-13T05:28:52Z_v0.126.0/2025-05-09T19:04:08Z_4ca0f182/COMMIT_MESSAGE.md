commit 4ca0f1829e0a348738caab8799237d395a975888
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Fri May 9 12:04:08 2025 -0700

    update semconv dependency to otelgo's semconv package (#12991)
    
    This updates the calls to the collector's internal semconv package with
    otelgo's instead. The main difference is how the keys can be used, they
    will need to be cast as strings where they key name is needed, otherwise
    it's not a huge change. This would allow us to stop producing our own
    semconv package once contrib is moved as well.
    
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/10346,
    https://github.com/open-telemetry/opentelemetry-collector/issues/11828,
    https://github.com/open-telemetry/opentelemetry-collector/issues/11807
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
