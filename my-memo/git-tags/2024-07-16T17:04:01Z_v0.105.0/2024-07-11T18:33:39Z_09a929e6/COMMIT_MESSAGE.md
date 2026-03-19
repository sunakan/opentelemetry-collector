commit 09a929e6d20d2cd059e840f22f66dece18201d2b
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Thu Jul 11 12:33:39 2024 -0600

    Properly handle error code translation (#10574)
    
    #### Description
    
    Fixes a bug where the otlpreceiver was not translating grpc error codes
    to http status codes the same way that the otlp exporter was translating
    http status codes to grpc error codes.
    
    #### Link to tracking issue
    Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/10538
    
    #### Testing
    Added unit tests
