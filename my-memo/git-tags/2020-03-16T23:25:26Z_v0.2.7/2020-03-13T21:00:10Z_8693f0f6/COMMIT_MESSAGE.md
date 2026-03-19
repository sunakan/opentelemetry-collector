commit 8693f0f6d8ea14532f1f36defc4507502c095cd5
Author: Przemek Maciolek <58699843+pmm-sumo@users.noreply.github.com>
Date:   Fri Mar 13 22:00:10 2020 +0100

    More details about trace data in logging exporter (#609)
    
    The exporter outputs data in a more verbose format when in debug mode, which allows to easily inspect what spans are being passed using the console.
    
    Additionally, it includes sampling, so by default the console should never get too much data
    
    The logger config is changed to use console encoding
    
    Sample output:
    ```
    2020-03-13T19:50:09.830Z        INFO    loggingexporter/logging_exporter.go:147 TraceData with 1 spans, node service: frontend, resource "" (1 labels)
    Resource labels:
         -> ip: 10.1.1.177
                HostName: hotrod
                     PID: 0
        Library language: LANGUAGE_UNSPECIFIED
    Core library version:
        Exporter version: Jaeger-Go-2.15.1dev
    Node attributes:
         -> ip: 10.1.1.177
         -> client-uuid: 526d676893250972
            {"exporter": "logging"}
    2020-03-13T19:50:09.830Z        DEBUG   loggingexporter/logging_exporter.go:187 Span #0
        Trace ID       : 00000000000000002bb7316b5625e704
        Parent ID      :
        ID             : 2bb7316b5625e704
        Name           : HTTP GET /
        Kind           : SERVER
        Start time     : seconds:1584129009 nanos:56055000
        End time       : seconds:1584129009 nanos:56107000
        Status code    : 0
        Status message :
        Span attributes:
             -> sampler.param: bool_value:true
             -> span.kind: server
             -> http.method: GET
             -> http.url: /
             -> component: net/http
             -> http.status_code: int_value:200
             -> sampler.type: const
            {"exporter": "logging"}
    ```
    
    **Link to tracking Issue:** https://github.com/open-telemetry/opentelemetry-collector/issues/610
    
    **Testing:** Basic unit tests for config and trace data added. Manually tested in an environment with data coming in various formats (Jaeger, Zipkin, OpenCensus)
    
    **Documentation:** Exporters README updated
