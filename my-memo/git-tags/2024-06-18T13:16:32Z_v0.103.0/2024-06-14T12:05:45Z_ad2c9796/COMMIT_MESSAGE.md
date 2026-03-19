commit ad2c9796f9a7bbebeb401ac43c38febaebf3519a
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Fri Jun 14 06:05:45 2024 -0600

    [confmap] Add featuregate to use stable expansion rules (#10391)
    
    #### Description
    This PR adds a feature gate that will handle transitioning users away
    from expandconverter, specifically expanding `$VAR` syntax.
    
    The wholistic strategy is:
    1. create a new feature gate, `confmap.unifyEnvVarExpansion`, that will
    be the single feature gate to manage unifying collector configuraiton
    resolution.
    2. Update expandconverter to return an error if the feature gate is
    enabled and it is about to expand `$VAR` syntax.
    3. Update `otelcol.NewCommand` to set a `DefaultScheme="env"` when the
    feature gate is enabled and no `DefaultScheme` is set, this handles
    `${VAR}` syntax.
      4. Separately, deprecate `expandconverter`.
      5. Follow a normal feature gate cycle.
    6. Removed the `confmap.unifyEnvVarExpansion` feature gates and
    `expandconverter` at the same time
    
    Supersedes
    https://github.com/open-telemetry/opentelemetry-collector/pull/10259
    
    #### Link to tracking issue
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/10161
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/8215
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/7111
    
    #### Testing
    Unit tests
