commit ed09fb912b2ff7cb3998cdb0b54027471ed65eaa
Author: Andrew Wilkins <axw@elastic.co>
Date:   Fri Aug 8 15:56:51 2025 +0800

    [chore] Move service/telemetry implementation (#13560)
    
    #### Description
    
    Move the telemetry implementation from `service/telemetry` to
    `service/telemetry/otelconftelemetry`, with the exception of the
    Settings type which is intended to remain in the `service/telemetry`
    package permanently. The goal here is to separate the interface (which
    is to be defined in a followup) and implementation, so multiple
    implementations can exist.
    
    This move is in preparation for creating a new Telemetry and Factory
    interface, similar to pipeline components. In the end, the
    implementation (e.g. otelconftelemetry) will be completely self
    contained, providing a NewFactory function to obtain a factory that can
    be used to construct a Telemetry implementation.
    
    The next steps after this PR would be:
    1. Update
    https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/7bf3615b56d443c522d5b5591ce53d5fe43b8b47/cmd/opampsupervisor/supervisor/config/config.go#L25
    to use otelconftelemetry. Eventually the opampsupervisor should probably
    use the Factory & Telemetry, but that can be done later on.
    2. Create the Factory and Telemetry interface in service/telemetry, and
    update otelconftelemetry to implement it, encapsulating the creation of
    the SDK & SDK resource. We would continue directly constructing the
    otelconftelemetry factory to keep the change contained. At this stage we
    could close
    https://github.com/open-telemetry/opentelemetry-collector/issues/8170.
    3. Update otelcol and service packages to inject the telemetry factory &
    default config into the service's settings and default config, and
    remove direct references to otelconftelemetry in the service package. At
    this stage we could close
    https://github.com/open-telemetry/opentelemetry-collector/issues/4970.
    
    #### Link to tracking issue
    
    Part of
    https://github.com/open-telemetry/opentelemetry-collector/issues/4970
    
    #### Testing
    
    N/A, non-functional change.
    
    #### Documentation
    
    N/A
