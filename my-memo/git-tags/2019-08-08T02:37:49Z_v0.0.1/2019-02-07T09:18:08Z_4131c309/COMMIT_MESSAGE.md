commit 4131c309fd3b1bc1333a3423c36a43b58f8bb5cc
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Thu Feb 7 02:02:58 2019 -0700

    receiver/opencensus: multiplex application/grpc+proto for gRPC based receiver
    
    The registered grpc-gateway HTTP/2 content-type header field
    was "application/grpc" but some clients in the wild send
    "application/grpc+proto" and as per the gRPC spec, it is a descriptive
    content length that should be handled by Proto (un)marshalers.
    
    This change removed the use of
    
        (*grpc.Server).Stop()
    
    which painfully took 20+s even without the "-race" go start option.
    Sure, that method adds some sort of internal shutdown mechanism but
    it is very painful to wait for 20+s for a server with zero connections
    to stop yet all we need to do is stop the actual net.Listener by
    
         (net.Listener).Stop()
    
    This change also adds a test which should work in a perfect world.
    However, we don't have control over writes on the wire with the gRPC
    connection hence our expectations for results to assert against are
    blissfully optimistic and will fail most of the time as those writes
    take sometime. The test has been included but skipped until we can
    figure out what's going on. In the meantime though, users should be
    able to use the OpenCensus receiver without trouble. Also internally
    in the receivers, we've got data bundling which is controlled
    separately despite options.
    
    Fixes #365
    Fixes #366
