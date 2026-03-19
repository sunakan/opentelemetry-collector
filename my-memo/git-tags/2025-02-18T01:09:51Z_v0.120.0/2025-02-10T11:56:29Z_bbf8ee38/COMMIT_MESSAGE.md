commit bbf8ee38121f41f5c14ac4e5a1606f36dfecc8e7
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Mon Feb 10 12:56:29 2025 +0100

    [configgrpc] Insert headers automatically (#12320)
    
    #### Description
    
    This PR uses the `grpc.WithUnaryInterceptor` option to add the metadata
    configured in `ClientConfig.Headers` automatically to requests made with
    the created `grpc.ClientConn`. Currently, users of `configgrpc` must
    extract the headers from the config and insert them manually in each
    request.
    
    The current implementation is meant to be backward-compatible with code
    that manually inserts the headers: if a header key is already present in
    the `Context` passed to the interceptor, it will not be modified and no
    duplicate will be added.
    
    #### Link to tracking issue
    Fixes #12307
    
    #### Testing
    The tests in `otlpexporter` check that headers are properly inserted,
    and they still pass after removing the OTLP-specific headers code. I
    also added a new test in configgrpc for testing unary RPC calls.
    
    I'm not sure how to easily test streaming RPC calls however (hence the
    lacking code coverage), but since [the
    docs](https://github.com/grpc/grpc-go/blob/master/Documentation/grpc-metadata.md)
    imply that adding metadata to streaming RPC calls is the same as unary
    calls, it should hopefully work.
