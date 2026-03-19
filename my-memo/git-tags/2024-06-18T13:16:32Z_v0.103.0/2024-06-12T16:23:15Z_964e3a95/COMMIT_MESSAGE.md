commit 964e3a95872e452e0cde6bb644786bac57c46bb9
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed Jun 12 10:23:15 2024 -0600

    [otelcol] Add new command to start erroring on empty providers (#10359)
    
    Add a featuregate to cause an error when no providers or converters are
    set in `CollectorSettings` that are passed to `NewCommand`.
    
    Also deprecate the functions in `otelcoltest` with versions that require
    `ConfigProviderSettings` so that all providers and converters deps can
    be removed when the feature gate is stable.
    
    Works towards
    https://github.com/open-telemetry/opentelemetry-collector/issues/10290.
    
    End state goal here:
    https://github.com/open-telemetry/opentelemetry-collector/pull/10357
    
    ---------
    
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
