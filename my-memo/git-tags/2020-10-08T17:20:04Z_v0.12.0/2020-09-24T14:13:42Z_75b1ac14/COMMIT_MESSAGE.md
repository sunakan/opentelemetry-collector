commit 75b1ac14fb070d2a17d1944350a9632f6b368793
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Sep 24 10:13:42 2020 -0400

    Use custom data type and custom JSON serialization for traceid (#1840)
    
    Contributes to https://github.com/open-telemetry/opentelemetry-collector/issues/1177
    
    1. The TraceID type uses custom data type so that JSON serialization
    is in hex format instead of base64 (which is the default Protobuf JSON
    format). Hex format is required by OTLP spec:
    https://github.com/open-telemetry/opentelemetry-specification/blob/master/specification/protocol/otlp.md#request
    SpanID must be also modified similarly. Will be done in a future PR
    to avoid creating a huge PR.
    
    2. Moved pdata.TraceID to its own file. Note that there is pdata.TraceID which
    is different from otlp TraceID custom data type. Due to the way packages are
    structured we need both to keep OTLP generated data types decoupled from pdata
    data types.
    
    The majority of the changes in this commit are simply type changes from
    []byte to TraceID.
