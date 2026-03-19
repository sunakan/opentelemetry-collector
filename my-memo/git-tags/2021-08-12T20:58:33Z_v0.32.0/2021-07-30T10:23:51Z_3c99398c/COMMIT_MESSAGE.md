commit 3c99398c27e57bc0702ad9e49a105c2d23f8d238
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Fri Jul 30 12:23:51 2021 +0200

    Use chained interceptors in the gRPC server (#3744)
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    Fixes #3734 by using chained interceptors for the gRPC servers. The tests making use of ToServerOptions were also changed to call grpc.NewServer with the obtained options, ensuring that they are valid.
    
    The test TestGrpcServerAuthSettings now calling grpc.NewServer, executed against the configgrpc without the chained interceptors confirms the bug:
    
    ```
    $ go test ./config/configgrpc/
    --- FAIL: TestGrpcServerAuthSettings (0.00s)
    panic: The unary server interceptor was already set and may not be reset. [recovered]
            panic: The unary server interceptor was already set and may not be reset.
    
    goroutine 23 [running]:
    testing.tRunner.func1.2(0xa6c2a0, 0xc0b8a0)
            /home/jpkroehling/bin/go/src/testing/testing.go:1144 +0x332
    testing.tRunner.func1(0xc000103b00)
            /home/jpkroehling/bin/go/src/testing/testing.go:1147 +0x4b6
    panic(0xa6c2a0, 0xc0b8a0)
            /home/jpkroehling/bin/go/src/runtime/panic.go:965 +0x1b9
    google.golang.org/grpc.UnaryInterceptor.func1(0xc000374500)
            /home/jpkroehling/go/pkg/mod/google.golang.org/grpc@v1.39.0/server.go:382 +0x6b
    google.golang.org/grpc.(*funcServerOption).apply(0xc0001243f0, 0xc000374500)
            /home/jpkroehling/go/pkg/mod/google.golang.org/grpc@v1.39.0/server.go:201 +0x33
    google.golang.org/grpc.NewServer(0xc000129900, 0x4, 0x4, 0x4)
            /home/jpkroehling/go/pkg/mod/google.golang.org/grpc@v1.39.0/server.go:564 +0xeb
    go.opentelemetry.io/collector/config/configgrpc.TestGrpcServerAuthSettings(0xc000103b00)
            /home/jpkroehling/Projects/src/github.com/open-telemetry/opentelemetry-collector/config/configgrpc/configgrpc_test.go:140 +0x2aa
    testing.tRunner(0xc000103b00, 0xb85528)
            /home/jpkroehling/bin/go/src/testing/testing.go:1194 +0xef
    created by testing.(*T).Run
            /home/jpkroehling/bin/go/src/testing/testing.go:1239 +0x2b3
    FAIL    go.opentelemetry.io/collector/config/configgrpc 0.006s
    FAIL
    ```
