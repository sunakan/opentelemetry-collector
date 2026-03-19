commit 91d6525f52a4b20b39a5d4062d55e08ddc3dd4bb
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed Aug 7 14:31:17 2024 -0600

    [confmap] Set confmap.unifyEnvVarExpansion feature gate to stable (#10508)
    
    #### Description
    
    This PR promotes the `confmap.unifyEnvVarExpansion` feature gate to
    stable and sets a `ToVersion` of `v0.106.0`, anticipating that the gate
    be completely removed in that version.
    
    We should weigh if switching the Stable should be done in `v0.105.0` or
    if it needs more time in `Beta` to give users more time to switch.
    Delaying promotion to `Stable` delays confmap 1.0.
    
    If we merge this we need to commit to merging
    https://github.com/open-telemetry/opentelemetry-collector/pull/10510 in
    the same release.
    
    #### Link to tracking issue
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/10161
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/7111
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/8215
    
    ---------
    
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
