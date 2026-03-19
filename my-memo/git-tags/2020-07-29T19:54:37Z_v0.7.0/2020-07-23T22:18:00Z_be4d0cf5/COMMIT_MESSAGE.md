commit be4d0cf5f3dc4db85510f0d824e09347ab451fbd
Author: Nail Islamov <nilebox@users.noreply.github.com>
Date:   Fri Jul 24 08:18:00 2020 +1000

    Update protobuf from v1.3.5 to v1.4.2 and opencensus-proto from v0.2.1 to v0.3.0 (#1308)
    
    * Update protobuf to v1.4.2
    
    * Disable SA1019 linter check (requires using different protobuf packages)
    
    * Update to opencensus-proto v0.3.0
    
    * Embed unimplemented servers in OpenCensus receiver (required by new gRPC)
    
    * Switch to go-cmp for comparing protobuf messages
    
    * Document changes in the changelog
    
    * Apply ignore lint rules to individual lines, fix trivial issues
    
    * go mod tidy
