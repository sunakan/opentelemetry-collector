commit 02837139f71ef69983af0f194bb4d278730e90e3
Author: Paulo Janotti <paulo@omnition.io>
Date:   Thu Feb 14 13:57:24 2019 -0800

    Prefer BinaryAnnotation.host over Zipkin "lc" annotation for service name (#394)
    
    Per zipkinCore.Thrift comments for "lc" (LOCAL_COMPONENT) it should be used to provide the "component" of a local span, however, the service context should come from BinnaryAnnotation.host. The recent changes were overwriting binary annotation host information if the "lc" was available, however, "lc" should be the last resort. This change only uses "lc" if no endpoint or binary annotation host is available.
    
    Fix #393
