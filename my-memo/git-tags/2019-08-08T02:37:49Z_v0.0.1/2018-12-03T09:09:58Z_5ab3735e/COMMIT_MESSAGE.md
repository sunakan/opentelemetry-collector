commit 5ab3735ed701f5c7388bdf917bfe8c72fb889b66
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Mon Dec 3 00:26:18 2018 -0800

    receiver/opencensus: provide a Start method for both Trace and Metrics
    
    Provide a Start method on the OpenCensus receiver to allow registering
    all services before running the gRPC server.
    
    Unfortunately gRPC's RegisterService doesn't return an error so
    it has no choice but to Fatalf as per
    https://github.com/grpc/grpc-go/blob/ca62c6b92c334f52c7e48b7cbf624f3b877fb092/server.go#L408-L410
    
    By design, in Go we cannot catch a .Fatalf that invokes os.Exit(code)
    so even a test is worthless to test this.
    
    Fixes #243
