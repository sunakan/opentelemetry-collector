commit 8dd42ec373037a5ff14e501baef7f5e873410d69
Author: Ben Mask <benjaminajm@gmail.com>
Date:   Wed Mar 27 17:57:37 2024 -0400

    [otlp exporter] Validate exporter endpoint has port (#9632)
    
    **Description:** This PR updates the otlp exporter config validation to
    ensure that the "endpoint" specified for the exporter includes a port.
    The goal of this is to fail fast if the configuration is invalid instead
    of waiting for an error to arise. The PR adds a function to the
    ClientConfig defined in configgrpc that parses the port defined in the
    endpoint. The otlp exporter uses this port parsing to validate that
    
    **Link to tracking Issue:** [Issue
    9505](https://github.com/open-telemetry/opentelemetry-collector/issues/9505)
