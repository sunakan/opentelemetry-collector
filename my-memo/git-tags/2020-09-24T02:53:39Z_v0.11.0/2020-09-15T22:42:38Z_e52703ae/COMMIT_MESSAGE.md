commit e52703ae6c4d31e7858dfe0d0f47e653fe079305
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Sep 15 18:42:38 2020 -0400

    Introduce TraceID custom data type (#1782)
    
    The TraceID type uses custom data type so that JSON serialization
    is in hex format instead of base64 (which is the default Protobuf JSON
    format). Hex format is required by OTLP spec:
    https://github.com/open-telemetry/opentelemetry-specification/blob/master/specification/protocol/otlp.md#request
    SpanID must be also modified similarly. Will be done in a future PR
    to avoid creating a huge PR.
    
    TraceID data is not yet used in the codebase. This is just an introductory
    commit that adds the type and tests but does not yet use them for actual
    serialization of OTLP messages. It will be done in a future PR.
    
    Contributes to https://github.com/open-telemetry/opentelemetry-collector/issues/1177
