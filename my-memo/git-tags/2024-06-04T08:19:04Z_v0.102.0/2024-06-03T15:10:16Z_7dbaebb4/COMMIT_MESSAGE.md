commit 7dbaebb48f33cf707a069c67eed5b2b614e9913b
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Mon Jun 3 17:10:16 2024 +0200

    [confighttp] Apply MaxRequestBodySize to the result of a decompressed body (#10289)
    
    This change applies a restriction on the size of the decompressed
    payload. Before this change, this is the result of the test added in
    this PR:
    
    ```
    --- FAIL: TestServerWithDecompression (0.03s)
        /home/jpkroehling/Projects/src/github.com/open-telemetry/opentelemetry-collector/config/confighttp/confighttp_test.go:1327:
                    Error Trace:    /home/jpkroehling/Projects/src/github.com/open-telemetry/opentelemetry-collector/config/confighttp/confighttp_test.go:1327
                                                            /usr/lib/golang/src/net/http/server.go:2166
                                                            /home/jpkroehling/Projects/src/github.com/open-telemetry/opentelemetry-collector/config/confighttp/compression.go:163
                                                            /home/jpkroehling/Projects/src/github.com/open-telemetry/opentelemetry-collector/config/confighttp/confighttp.go:455
                                                            /usr/lib/golang/src/net/http/server.go:2166
                                                            /home/jpkroehling/go/pkg/mod/go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp@v0.52.0/handler.go:212
                                                            /home/jpkroehling/go/pkg/mod/go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp@v0.52.0/handler.go:73
                                                            /usr/lib/golang/src/net/http/server.go:2166
                                                            /home/jpkroehling/Projects/src/github.com/open-telemetry/opentelemetry-collector/config/confighttp/clientinfohandler.go:26
                                                            /usr/lib/golang/src/net/http/server.go:3137
                                                            /usr/lib/golang/src/net/http/server.go:2039
                                                            /usr/lib/golang/src/runtime/asm_amd64.s:1695
                    Error:          An error is expected but got nil.
                    Test:           TestServerWithDecompression
        /home/jpkroehling/Projects/src/github.com/open-telemetry/opentelemetry-collector/config/confighttp/confighttp_test.go:1328:
                    Error Trace:    /home/jpkroehling/Projects/src/github.com/open-telemetry/opentelemetry-collector/config/confighttp/confighttp_test.go:1328
                                                            /usr/lib/golang/src/net/http/server.go:2166
                                                            /home/jpkroehling/Projects/src/github.com/open-telemetry/opentelemetry-collector/config/confighttp/compression.go:163
                                                            /home/jpkroehling/Projects/src/github.com/open-telemetry/opentelemetry-collector/config/confighttp/confighttp.go:455
                                                            /usr/lib/golang/src/net/http/server.go:2166
                                                            /home/jpkroehling/go/pkg/mod/go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp@v0.52.0/handler.go:212
                                                            /home/jpkroehling/go/pkg/mod/go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp@v0.52.0/handler.go:73
                                                            /usr/lib/golang/src/net/http/server.go:2166
                                                            /home/jpkroehling/Projects/src/github.com/open-telemetry/opentelemetry-collector/config/confighttp/clientinfohandler.go:26
                                                            /usr/lib/golang/src/net/http/server.go:3137
                                                            /usr/lib/golang/src/net/http/server.go:2039
                                                            /usr/lib/golang/src/runtime/asm_amd64.s:1695
                    Error:
                    Test:           TestServerWithDecompression
        /home/jpkroehling/Projects/src/github.com/open-telemetry/opentelemetry-collector/config/confighttp/confighttp_test.go:1357:
                    Error Trace:    /home/jpkroehling/Projects/src/github.com/open-telemetry/opentelemetry-collector/config/confighttp/confighttp_test.go:1357
                    Error:          Not equal:
                                    expected: 200
                                    actual  : 400
                    Test:           TestServerWithDecompression
    FAIL
    FAIL    go.opentelemetry.io/collector/config/confighttp 0.036s
    FAIL
    ```
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    ---------
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
