commit 11effd365f0a73bc02736f3552e6bb696152fbd1
Author: Phillip Carter <pcarter@fastmail.com>
Date:   Thu Jul 13 11:40:55 2023 -0700

    Handle trailing slash on endpoint for otlphttp (#8083)
    
    This makes it so we don't put a double slash on the endpoint for
    otlphttp when it exists.
    
    The spec says that this kind of stuff should be handled w.r.t. the
    OTEL_EXPORTER_OTLP_ENDPOINT env var and says nothing about programmatic
    handling of this config. But I still think it's a worthwhile change on a
    common-ish[1] ergonomic issue.
    
    [1] while the collector isn't the only source of this, at honeycomb we
    emitted an error related to a misconfigured otlphttp endpoint ~2.5
    million times over the past month
    
    fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/8084
    
    ---------
    
    Co-authored-by: Alex Boten <aboten@lightstep.com>
    Co-authored-by: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
