commit eaab76e46d3849bfe5ece1f53155877b128283c8
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed May 29 16:39:53 2024 -0600

    [confmap] Add ability to set default provider (#10182)
    
    #### Description
    This PR adds support for expanding `${}` syntax when no schema is
    provided by allowing Resolver to use a default provider.
    
    In a followup PR I'll update otelcol with a feature gate that allow
    switching between a default envProvider and the expandconverter.
    
    #### Link to tracking issue
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/10161
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/7111
    
    #### Testing
    Added unit tests
    
    #### Documentation
    Added godoc strings
    
    ---------
    
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
