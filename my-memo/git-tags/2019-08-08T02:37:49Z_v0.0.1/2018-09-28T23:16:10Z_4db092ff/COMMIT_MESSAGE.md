commit 4db092ff478d2f6be61dcae1165e4dce54dce16a
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Fri Sep 28 00:06:05 2018 -0700

    interceptor: OpenCensus as a TraceInterceptor + end-to-end sample
    
    * Introduce interceptor.TraceInterceptor
    * Made the OpenCensus interceptor implement
    interceptor.TraceInterceptor
    * Provided an end-to-end "test" which
    features code that will run under cmd/ocagent
    and shows client code running in application libraries
