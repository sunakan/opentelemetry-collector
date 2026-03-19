commit fcdfdaa7c17888ea08064b47807982f761044ddd
Author: David Ashpole <dashpole@google.com>
Date:   Thu Apr 18 15:37:02 2024 -0400

    Update go.opentelemetry.io/proto/otlp to v1.2.0 (#9985)
    
    Update the OTLP proto dependency and generated code. I plan to use the
    metric.metadata field to support additional prometheus types per
    https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/compatibility/prometheus_and_openmetrics.md#metric-metadata
