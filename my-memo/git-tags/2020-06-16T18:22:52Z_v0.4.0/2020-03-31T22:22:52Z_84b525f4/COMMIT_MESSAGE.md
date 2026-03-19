commit 84b525f4a8a7aee585f64a53cc4194c45615d24c
Author: Gary Brown <gary@brownuk.com>
Date:   Tue Mar 31 23:22:52 2020 +0100

    [BREAKING CHANGE] Remove the jaeger thrift exporter, and make grpc the single exporter for Jaeger (#629)
    
    * Remove Jaeger thrift exporter and make the gRPC exporter the one and only Jaeger exporter
    
    Signed-off-by: Gary Brown <gary@brownuk.com>
    
    * Fix the testbed
    
    Signed-off-by: Gary Brown <gary@brownuk.com>
    
    * Rebase
