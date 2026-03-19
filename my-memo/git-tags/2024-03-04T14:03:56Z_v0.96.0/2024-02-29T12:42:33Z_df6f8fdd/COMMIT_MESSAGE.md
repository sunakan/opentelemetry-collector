commit df6f8fddccb93fa173235cc99e6d1da250a530cb
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Thu Feb 29 07:42:33 2024 -0500

    [otelcol] Allow passing confmap.Providers to otelcol.Collector (#9228)
    
    **Description:**
    
    One way to work toward
    https://github.com/open-telemetry/opentelemetry-collector/issues/4759.
    This implements the second approach that I've outlined here:
    https://github.com/open-telemetry/opentelemetry-collector/issues/4759#issuecomment-1863082504.
    
    I think the main advantage of this approach is that it cleans up the API
    for the package. `otelcol.ConfigProvider` is a fairly thin wrapper
    around `confmap.Resolver`, so I think we could ultimately remove the
    interface, and any custom functionality for config merging or
    unmarshaling could be exposed to users through settings rather through a
    custom implementation.
    
    **Link to tracking Issue:**
    
    Works toward
    https://github.com/open-telemetry/opentelemetry-collector/issues/4759
    
    **Testing:**
    
    Unit tests
    
    **Documentation:**
    
    Added Godoc comments.
