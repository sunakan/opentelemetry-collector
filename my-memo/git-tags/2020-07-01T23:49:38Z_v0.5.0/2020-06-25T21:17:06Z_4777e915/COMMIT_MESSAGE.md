commit 4777e915f1fe645d5901cf1c0ffdeff44d98d39d
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Jun 25 17:17:06 2020 -0400

    Update OTLP to v0.4.0 [Breaking change] (#1142)
    
    This is a breaking OTLP change.
    
    - Use AnyValue introduced in recent change to OTLP.
      Changes are encapsulated in AttributeValue and most of the codebase is
      unaffected, which proves the wrappers are very useful.
    
    - Rename AttributeKeyValue to KeyValue (the change comes from OTLP).
    
    - Use local protoc to compile ProtoBufs. Previously used znly/protoc
      docker image is outdated and results in incorrect code for gRPC-Gateway.
    
    TODO:
    
    - Need to add support for ARRAY value type. This is not urgent since
      there are no known data sources that use the ARRAY type yet.
    
    - Use Gogoproto `(gogoproto.nullable) = false` annotation for AnyValue
      to possibly improve performance further.
