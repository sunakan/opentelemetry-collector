commit bdb4d3d3dd6250ff7782e3a238f184682efd2957
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Thu Oct 4 17:48:19 2018 -0700

    interceptor/opencensus: record number of received spans
    
    Instrument interceptor/opencensus with stats to record
    the number of received spans. This is accomplished by
    a helper to process spans that sends over spans even
    if the number of spans is 0. Also record with tag_key
    "opencensus_interceptor" whose value is the name
    of the respective interceptor.
    
    The test to ensure that 0 length spans are also added
    is currently disabled because:
    * Issue https://github.com/census-instrumentation/opencensus-go/issues/862
    is not yet implemented which requests that the OpenCensus-Go
    stats worker provide a method Flush to flush all data. Without
    it, metrics will contain stale data from previous tests.
    
    Add tests to lock-in this behavior.
    
    Also replace grpc.NewServer with a stats enabled server helper call.
    This enables tracing and metrics for each gRPC server by replacing
    naked usages of grpc.NewServer with the new helper function:
        internal.GRPCServerWithObservabilityEnabled
    
    Updates #63
