commit 035aa5cf6c92678c3f8362d6916e18444a8250fb
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Oct 1 17:30:35 2020 -0400

    Use new SpanID data type in OTLP Protobuf message (#1856)
    
    This enables usage of SpanID data type. Now span id is hex encoded
    as it is required by OTLP specification.
    
    Contributes to: https://github.com/open-telemetry/opentelemetry-collector/issues/1177
