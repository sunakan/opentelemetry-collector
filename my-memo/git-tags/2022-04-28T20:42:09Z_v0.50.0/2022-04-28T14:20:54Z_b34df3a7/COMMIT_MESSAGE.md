commit b34df3a7e7e9ea6dba20608c2f1f53bedc2a3d22
Author: Alex Boten <aboten@lightstep.com>
Date:   Thu Apr 28 07:20:54 2022 -0700

    [bugfix] temporary fix around grpclogger (#5272)
    
    * [bugfix] temporary fix around grpclogger
    
    Calling SetLoggerV2 isn't thread safe and should only be called before
    any grpc functions. See more details: https://pkg.go.dev/github.com/grpc-ecosystem/go-grpc-middleware@v1.3.0/logging/settable#pkg-overview
    
    * add SkipSettingGRPCLogger flag
    
    This allows the InProcessCollector to prevent entering a race condition.
