commit f8557d732f70e8e5804948e7c63fb70ba88044c4
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Wed Oct 31 21:04:37 2018 -0700

    interceptor/zipkin: logic to parse spans from Protobuf
    
    Can now intercept Zipkin Protobuf spans that are
    sent to a Zipkin server.
    
    The ZipkinInterceptor multiplexes on the "Content-Type"
    header, checking if the value set is "application/x-protobuf"
    otherwise fallback to try parsing as JSON.
    
    * go.mod: use Zipkin-Go which features proto parsing
    * Add the "X-B3-Flags" reference from Zipkin resources
    
    Fixes #154
    Spawned https://github.com/openzipkin/zipkin-go/issues/87
    Waiting on https://github.com/openzipkin/zipkin-go/pull/88
