commit 2108ae88f50cd1e9ed741c4fd05c6991494c9193
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Thu Apr 18 12:01:01 2024 -0400

    [confmap] Add converter and provider settings to confmap.ResolverSettings (#9516)
    
    **Description:**
    
    Follows
    https://github.com/open-telemetry/opentelemetry-collector/pull/9443,
    relates to
    https://github.com/open-telemetry/opentelemetry-collector/pull/9513.
    
    This builds on
    https://github.com/open-telemetry/opentelemetry-collector/pull/9228 to
    demonstrate the concept.
    
    This shows one way of extending the otelcol APIs to allow passing
    converters and providers from the builder with the new settings structs
    for each type.
    
    I think this approach has a few advantages:
    1. This follows our pattern of passing in "factory" functions instead of
    instances to the object that actually uses the instances.
    2. Makes the API more declarative: the settings specify which modules to
    instantiate and which settings to instantiate them with, but don't
    require the caller to actually do this.
    3. Compared to the current state, this allows us to update the config at
    different layers. A distribution's `main.go` file can specify the
    providers/converters it wants and leave the settings to be created by
    `otelcol.Collector`.
    
    The primary drawbacks I see here are:
    1. This is a little more opinionated since you don't have access to the
    converter/provider instances or control how they are instantiated. I
    think this is acceptable and provides good encapsulation.
    2. The scheme->provider map can now only be specified by the providers'
    schemes, which is how it is currently done by default. I would want to
    hear what use cases we see for more complex control here that
    necessitates using schemes not specified by the providers.
    
    cc @mx-psi
    
    ---------
    
    Co-authored-by: Evan Bradley <evan-bradley@users.noreply.github.com>
