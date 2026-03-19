commit 9976ea82dcfd8664312d0fcec274670374530b99
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Thu Feb 1 10:49:49 2024 -0700

    [receiver/otlp] Switch from InvalidArgument to Internal (#9415)
    
    The otlp receiver was recently updated via
    https://github.com/open-telemetry/opentelemetry-collector/pull/8080 to
    properly propagate consumer errors back to clients as either permanent
    or retriable. The code we're using to indicate a non-retriable error is
    `codes.InvalidArgument`, which is the equivalent of `400` in HTTP.
    
    While 100% correct according to the [OTLP
    specification](https://github.com/open-telemetry/opentelemetry-proto/blob/main/docs/specification.md#failures)
    to indicate a non-retriable error, I think `codes.Internal` (which is
    equivalent to HTTP `500`), better conveys the actual state of the
    collector in these situations.
    
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/pull/9357#discussion_r1467011281
    
    
    ---------
    
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
