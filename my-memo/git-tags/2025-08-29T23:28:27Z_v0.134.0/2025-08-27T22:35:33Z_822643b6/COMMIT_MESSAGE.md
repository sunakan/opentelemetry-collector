commit 822643b60498eb210a3f125392cc1ec6535c6544
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Aug 27 15:35:33 2025 -0700

    [chore] Small nits, consistent JSON and Proto logic to call into internal (#13724)
    
    The main idea is that the [*]otlp/Request is for http/grpc OTLP
    communication, but the Marshaler is only marshaling non-protocol
    specific data.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
