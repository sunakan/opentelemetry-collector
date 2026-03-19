commit c3f70bd1f8ea00dd04be45814d02b671064e5aa0
Author: Alex Boten <aboten@lightstep.com>
Date:   Thu Jun 29 07:46:34 2023 -0700

    add support for additional decoders (#7977)
    
    This provides the ability to add support for compression types which are
    not supported in core, to be supported by individual components.
    
    This change addresses an issue caused by
    https://github.com/open-telemetry/opentelemetry-collector/pull/7927,
    which prevents receivers that use confighttp from adding support for
    their content-encoding types easily. They still can by implementing an
    error handler, but that seems messy.
    
    An alternative to this PR is to not return an error for an unsupported
    encoding type as was the case before
    https://github.com/open-telemetry/opentelemetry-collector/pull/7927
    
    If the approach is acceptable, I will add the unit tests and changelog
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
