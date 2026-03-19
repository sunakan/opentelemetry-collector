commit 5369d7e9e83edf932c768912d8adc04e52d0960e
Author: Pavan Krishna <pavankri@cisco.com>
Date:   Thu Jun 3 11:23:16 2021 -0700

    Updated configgrpc ToDialOptions and confighttp ToClient apis to take extensions configuration map  (#3340)
    
    This PR is a port of the configfrpc's ToDialOptions() and confighttp ToClient() from PR #3128  in a piece meal fashion.
    
    The following are the changes
    - Refactored configgrpc.PerRPCAuth as extension implementing configauth.GrpcClientAuthenticator
    - Plugged in extensions configuration to all the grpc based clients in the core (OTLP, OpenCensus, Jaeger, JaegerReceiver)
    - Plugged in extensions configuration to all the HTTP based clients in the core (Zipkin, OTLPHTTP)
    
    Link to tracking Issue:
     #3282 #3276
    
    Testing:
    Unit tests, [manual test described (for only oidc)](#3128 (comment))
