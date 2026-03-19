commit 06dd26a90f831f09ac6ac6eff54c505221d3ae47
Author: Nail Islamov <nilebox@users.noreply.github.com>
Date:   Fri Mar 20 02:15:22 2020 +1100

    OpenTelemetry receiver (#577)
    
    Adding a feature - Implementation of OpenTelemetry (OTLP) receiver.
    This is a first cut with no tests, please provide early feedback.
    
    The code is based on OpenCensus implementation, mostly replacing OC proto types with OTLP, and unary request-response handling instead of streaming (https://github.com/open-telemetry/opentelemetry-proto/pull/42)
    
    Link to tracking Issue: https://github.com/open-telemetry/opentelemetry-collector/issues/574
