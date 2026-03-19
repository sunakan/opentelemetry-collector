commit ffd2a1eb98980702fd642d8a9e4c270934e82e67
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu May 28 14:16:56 2020 -0400

    Generate OTLP Go code in this repositorry (#1037)
    
    * Generate OTLP Go code in this repo
    
    Generate ProtoBufs in this repository instead of importing from opentelemetry-proto.
    This allows us to customize the generation process.
    
    - Added opentelemetry-proto as a submodule.
    - Added `make genproto` target that generates Go ProtoBufs from opentelemetry-proto
      submodule and puts them in internal/opentelemetry-proto-gen.
      Generation is done using Gogoproto instead of Go Protobuf.
    - Modified all files to import OTLP Go code from internal/opentelemetry-proto-gen.
    
    * Add wire compatibility tests
