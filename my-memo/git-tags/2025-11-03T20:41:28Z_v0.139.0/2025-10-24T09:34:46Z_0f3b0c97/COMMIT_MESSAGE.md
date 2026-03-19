commit 0f3b0c974e235da85282c6d6ff5734e55e8f4fbc
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Fri Oct 24 11:34:46 2025 +0200

    Refactor componentattribute and move into service (#13948)
    
    #### Description
    
    This PR splits the code handling component attribute injection,
    currently in `internal/telemetry` and
    `internal/telemetry/componentattribute`, into three parts:
    - the part meant to be called by components to drop unwanted injected
    attributes, which remains in `internal/telemetry`;
    - the part which handles copying Zap logs to an OTel LoggerProvider
    (where injected attributes are surfaced as instrumentation scope
    attributes), which is moved into `service/telemetry/otelconftelemetry`,
    since this "copying" behavior is specific to the otelconf-based
    telemetry provider;
    - the rest is moved into `service/internal/componentattribute`.
    
    The main goals of this split are:
    - to address #13842, by moving most dependencies of `componentattribute`
    into the service
    - to prepare for the availability of alternate telemetry providers.
    
    I also rewrote a lot of the attribute injection code along the way:
    
    - Instead of adding an unexported field in `TelemetrySettings` to store
    the current set of injected attributes, this set is now stored inside
    the provider wrappers (which was already partly the case). This allowed
    me to move the `TelemetrySettings` definition back into `component`,
    removing the dependency it had on `componentattribute`.
    
    - I completely changed the approach for injection in logs. Instead of a
    chain of custom core wrappers with a `withAttributeSet` method, injected
    attributes are now set through the standard `zapcore.Core.With` method.
    By introducing a custom `ObjectMarshaler`, we can make injected
    attributes act like regular Zap fields, while also allowing special
    handling in the otelzap wrapper core, which will set them as
    instrumentation scope attributes instead of log record attributes.
    
    If I'm not mistaken, this PR should have no externally-visible changes,
    so no changelog should be necessary. (Except maybe the `_ struct{}` in
    `TelemetrySettings`, but there was no changelog when we added those
    elsewhere)
    
    #### Link to tracking issue
    Updates #13842
    
    #### Testing
    The large amounts of splitting and refactoring led me to abandon the
    existing tests, as they would be too hard to adapt. I wrote new tests
    for the code in `service/telemetry/otelconftelemetry` and
    `service/internal/componentattribute`, which hopefully should fill that
    gap appropriately.
