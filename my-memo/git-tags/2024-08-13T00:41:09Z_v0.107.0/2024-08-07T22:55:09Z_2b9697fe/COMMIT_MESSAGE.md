commit 2b9697fe09616e1175adcea0d1362272af9b4aed
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed Aug 7 16:55:09 2024 -0600

    [confmap] Deprecate expandconverter (#10510)
    
    #### Description
    This PR deprecates `expandconverter` and removes its use from
    `otelcoltest.LoadConfig` and OCB.
    
    This cannot be merged until the `confmap.unifyEnvVarExpansion` [feature
    gate is made
    stable](https://github.com/open-telemetry/opentelemetry-collector/pull/10508).
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10161
    closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/7111
    closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/8215
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
