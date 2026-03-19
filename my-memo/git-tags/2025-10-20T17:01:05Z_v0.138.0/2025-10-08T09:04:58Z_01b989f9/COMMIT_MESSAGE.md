commit 01b989f97d166ef9482e55769b2f186cec8c116b
Author: Andrew Wilkins <axw@elastic.co>
Date:   Wed Oct 8 17:04:58 2025 +0800

    Introduce service.Settings.TelemetryFactory (#13838)
    
    #### Description
    
    The `service.Settings` type now has a `TelemetryFactory` field for
    injecting the `telemetry.Factory` to be used for creating a logger and
    logger provider, meter provider, and tracer provider. The `otelcol`
    package is hard-coded to inject an `otelconftelemetry` factory for now.
    In a followup we will make it possible to inject the telemetry through
    `otelcol.Factories`.
    
    #### Link to tracking issue
    
    Part of
    https://github.com/open-telemetry/opentelemetry-collector/issues/4970
    
    #### Testing
    
    Manually verified that service telemetry configuration still works with
    a collector binary.
    
    #### Documentation
    
    N/A
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
