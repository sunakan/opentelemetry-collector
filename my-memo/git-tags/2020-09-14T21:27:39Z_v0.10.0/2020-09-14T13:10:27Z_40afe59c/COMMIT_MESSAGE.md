commit 40afe59cdf8296e018b9b89501e86853a6c8a825
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Sep 14 09:10:27 2020 -0400

    Prepare for custom serialization of OTLP/JSON (#1761)
    
    This requires using custom data types with Gogoprotobuf library.
    Gogoprotobuf does not have its own version of JSON Protobuf encoder/decoder,
    so we first need to create one. JSONPb that we introduce here is a copy
    of jsonpb.Marshaler from github.com/grpc-ecosystem/grpc-gateway project,
    but modified to use Gogoproto library instead of golang/protobuf library.
    
    After this PR is merged the next PR will introduce a custom data type
    for trace_id field which will implement custom JSON serialization in hex
    format as mandated by OTLP specification:
    https://github.com/open-telemetry/opentelemetry-specification/blob/master/specification/protocol/otlp.md#request
