commit 04a7e7ae673f6bc1cb219cb8a8d75d9c4369bb9f
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Aug 27 11:57:43 2025 -0700

    Add custom grpc/encoding that replaces proto and calls into our formats first (#13719)
    
    This change should not affect other gRPC calls since it fallbacks to the
    default grpc/proto encoding if requests are not pdata/otlp requests.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
