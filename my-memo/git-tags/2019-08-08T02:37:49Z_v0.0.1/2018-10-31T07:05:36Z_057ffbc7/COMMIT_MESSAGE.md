commit 057ffbc72498eb3ee0ddd6682d99e1db90ec6562
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Mon Oct 29 16:25:55 2018 -0700

    interceptor, exporter/zipkin: own Trace exporter with per span attributes
    
    This change introduces our own copy of a modified Zipkin Trace
    exporter from OpenCensus-Go. This modification takes into
    account the fact that our Zipkin interceptor "intercepts"/proxies
    spans while the OpenCensus-Go Zipkin exporter assumes a static
    world in which there is only one localEndpoint and no remoteEndpoint.
    However, localEndpoint and remoteEndpoint are per-span fields
    hence the necessity for us to ensure that users of this project
    can have an almost transparent proxying and processing of Zipkin spans.
    
    This change also features an end-to-end test that takes intercepted
    Zipkin spans e.g. from a Zipkin Java exporting application, intercepts
    them to the AgentCore and then on export we ensure that our output
    has all the endpoints "localEndpoint", "remoteEndpoint" as well
    as an equivalence of all the other fields.
    
    We also now use the updated Zipkin-Go client after
        https://github.com/openzipkin/zipkin-go/issues/85
    was fixed with
        https://github.com/openzipkin/zipkin-go/pull/86
    
    The updated Zipkin-Go no longer serializes empty ipv4
    addresses as 0.0.0.0 so remove those from our tests
    Fixed as per https://github.com/openzipkin/zipkin-go/pull/86
    
    Fixes #132
    Supersedes https://github.com/census-instrumentation/opencensus-go/issues/959
    Supersedes https://github.com/census-instrumentation/opencensus-go/issues/960
    Spawned https://github.com/openzipkin/zipkin-go/issues/85
