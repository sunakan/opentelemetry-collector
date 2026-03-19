commit 9bcf6057bb4626c4712158071d5a8a669b182c7c
Author: Emmanuel T Odeke <odeke@ualberta.ca>
Date:   Fri Oct 26 11:41:00 2018 -0700

    interceptor: add zipkin /v2 interceptor (#111)
    
    * interceptor: add zipkin interceptor
    
    * Zipkin interceptor multiplexing + running on 9411
    
    * Can receive spans from diverse sources and successfully
    intercept traces from various serviceNames and IPv* combinations.
    Verified by examining the data on the Zipkin UI itself by
    resending to a server running on a different port.
    
    * End-to-end serialization tests where we intercept JSON
    from a wild Zipkin reporter, transform it into trace-proto
    then to OpenCensus-Go SpanData and then export it with the
    OpenCensus-Go Zipkin exporter, inspect the JSON and compare
    it with the final/expected JSON data.
    
    Fixes #24
    
    * interceptor/zipkin: add remoteEndpoint to Node.Attributes
    
    Zipkin's RemoteEndpoint field is necessary when later on
    building the dependency graph for Zipkin services.
    
    This change ensures that that field is added as an attribute
    to the Node with keys whose prefix is:
      "zipkin.remoteEndpoint." e.g.
    
    - "zipkin.remoteEndpoint.ipv4"
    - "zipkin.remoteEndpoint.serviceName"
    - "zipkin.remoteEndpoint.port"
    
    * Fail if Zipkin interceptor and exporter run on same address
    
    Fail spectacularly if the Zipkin interceptor and the Zipkin
    exporter will all be run on the same address.
    This is because this is a self DOS vector as intercepted spans
    will be processed by the interceptor, then exported out by
    the exporter but instead those exported spans will then be
    sent back to the interceptor and this goes on indefinitely
    and will just consume memory and resources.
    
    To perform this check:
    a) Compare HostPorts of interceptor vs exporter
    b) If say "127.0.0.1", "localhost", "" for host and the ports
    match
    c) Resolve the IPs for the hosts
    
    if any of those steps match return a logical conflict error
    which will be thrown later.
    
    The crash will look something like this
    ```shell
    2018/10/23 18:54:41 Configuration logical error: ZipkinInterceptor address ("127.0.0.1:9411") aka (127.0.0.1 on port 9411)
    is the same as the interceptor address ("localhost:9411") aka (127.0.0.1 on port 9411)
    ```
    
    We can now detect any of these clashing configurations:
    
    ```yaml
    interceptors:
        zipkin:
            address: "127.0.0.1:9411"
    exporters:
        zipkin:
            endpoint: "http://localhost:9411/api/v2/spans"
    ```
    
    ```yaml
    interceptors:
        zipkin:
            address: ":9411"
    
    exporters:
        zipkin:
            endpoint: "http://localhost:9411/api/v2/spans"
    ```
    
    ```yaml
    interceptors:
        zipkin:
            address: "localhost:9411"
    
    exporters:
        zipkin:
            endpoint: "http://localhost:9411/api/v2/spans"
    ```
    
    ```yaml
    interceptors:
        zipkin:
            address: "localhost:9411"
    
    exporters:
        zipkin:
            endpoint: "http://:9411/api/v2/spans"
    ```
    
    ```yaml
    interceptors:
        zipkin:
            address: "localhost:9411"
    
    exporters:
        zipkin:
            endpoint: "http://127.0.0.1:9411/api/v2/spans"
    ```
    
    and in a case where IP resolution helped, "10.0.0.147" is my local
    address and I sneakishly tried to get the interceptor on "localhost"
    which clashes with my local address as per:
    
    ```yaml
    interceptors:
        zipkin:
            address: "localhost:9411"
    
    exporters:
        zipkin:
            endpoint: "http://10.0.0.147:9411/api/v2/spans"
    ```
    
    we caught it
    ```shell
    2018/10/23 19:01:01 Configuration logical error: ZipkinInterceptor address ("10.0.0.147:9411") aka (10.0.0.147 on port 9411)
    is the same as the interceptor address ("localhost:9411") aka (10.0.0.147 on port 9411)
    ```
    
    * Go fmt with Go1.10 to match TravisCI
    
    Go1.11's gofmt seems to be more conservating with
    aligning literal assignments while Go1.10 seems more
    extravagant. This subtle difference was causing TravisCI
    failures since TravisCI uses Go1.10.
    
    * interceptor/zipkin: handle compressed HTTP bodies
    
    Some clients such as Zipkin-Java send HTTP bodies
    with JSON that's been compressed as "gzip".
    This change handles "Content-Encoding" values of:
    * "gzip"
    * "deflate", "zlib"
    and decompresses them accordingly
    
    * interceptor/zipkin: tests use anagram signature
    
    A test that checked for raffled output before used an
    "xorChecksum" but that's not really always unique.
    The better way is to use an anagram counter, then
    create a signature from the serialized map of counted
    runes.
    
    * interceptor/zipkin: address review feedback
    
    * Package rename to "zipkinterceptor" --> "zipkininterceptor"
    * Fix error names
    
    * Address feedback from review
    
    * move "zipkinRoute" const to the top to make it easily
    discoverable and not be buried deep in code
    * set status of zipkin interceptor if we encounter an error
    while parsing spans. We set the span status to: StatusInvalidArgument
    and the error message
    
    * *zipkin: address feedback from review
    
    * Add a comment ot exporter/exporterparse.zipkinExporter
    that the mutex "mu" protects all the constituent fields
    * Fix and ensure that node uniqueness is clear, with the
    proper check from a map lookup but also rename the variable
    to store nodes to "uniqueNodes" to make for better code readability
    
    * README.md + default config.yaml: update interceptors docs and information
    
    Added a section in the README.md on the various interceptors
    and how to change the Zipkin interceptor address
    
    * sync.Mutex instead of sync.RWMutex for zipkinExporter.mu
