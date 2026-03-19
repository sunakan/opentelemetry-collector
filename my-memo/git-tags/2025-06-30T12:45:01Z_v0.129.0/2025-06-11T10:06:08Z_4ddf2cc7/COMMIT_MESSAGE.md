commit 4ddf2cc7c8be95889feed96284c83d52230c63b8
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Wed Jun 11 12:06:08 2025 +0200

    [service] Share log sampler core allocations with reflect magic (#13107)
    
    #### Context
    
    PR #12617, which implemented the injection of component-identifying
    attributes into the `zap.Logger` provided to components, introduced
    significant additional memory use when the Collector's pipelines contain
    many components (#13014). This was because we would call
    `zapcore.NewSamplerWithOptions` to wrap the specialized logger core of
    each Collector component, which allocates half a megabyte's worth of
    sampling counters.
    
    This problem was mitigated in #13015 by moving the sampling layer to a
    different location in the logger core hierarchy. This meant that
    Collector users that do not export their logs through OTLP and only use
    stdout-based logs no longer saw the memory increase.
    
    #### Description
    
    This PR aims to provide a better solution to this issue, by using the
    `reflect` library to clone zap's sampler core and set a new inner core,
    while reusing the counter allocation.
    
    (This may also be "more correct" from a sampling point of view, ie. we
    only have one global instance of the counters instead of one for console
    logs and one for each component's OTLP-exported logs, but I'm not sure
    if anyone noticed the difference anyway).
    
    #### Link to tracking issue
    Fixes #13014
    
    #### Testing
    A new test was added which checks that the log counters are shared
    between two sampler cores with different attributes.
