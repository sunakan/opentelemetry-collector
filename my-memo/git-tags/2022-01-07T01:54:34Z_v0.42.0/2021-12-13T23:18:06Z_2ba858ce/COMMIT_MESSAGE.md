commit 2ba858ce22350d4835fd19d76bcfdd87bf1093f1
Author: Pavan Krishna <pavankri@cisco.com>
Date:   Mon Dec 13 15:18:06 2021 -0800

    Set grpc logger to collector (#4501)
    
    Adding a feature - This feature sets the grpc logger to one derived from collector logger configuration and enables users to control grpc logs.
    
    
    - In the case of collector default configuration, gRPC logs minimum level is set to WARN (to reduce the log traffic) but shared rest of collector's logger configuration.
    
    ```bash
    $ ./bin/cmd-otelcol --config ./bin/config.yaml
    2021-11-30T16:47:38.293-0800    info    service/collector.go:201        Applying configuration...
    2021-11-30T16:47:38.294-0800    info    builder/exporters_builder.go:254        Exporter was built.     {"kind": "exporter", "name": "otlp"}
    2021-11-30T16:47:38.294-0800    info    builder/exporters_builder.go:254        Exporter was built.     {"kind": "exporter", "name": "logging"}
    2021-11-30T16:47:38.295-0800    info    builder/pipelines_builder.go:222        Pipeline was built.     {"name": "pipeline", "name": "metrics"}
    2021-11-30T16:47:38.295-0800    info    builder/pipelines_builder.go:222        Pipeline was built.     {"name": "pipeline", "name": "traces"}
    2021-11-30T16:47:38.295-0800    info    builder/receivers_builder.go:224        Receiver was built.     {"kind": "receiver", "name": "otlp", "datatype": "traces"}
    2021-11-30T16:47:38.295-0800    info    builder/receivers_builder.go:224        Receiver was built.     {"kind": "receiver", "name": "otlp", "datatype": "metrics"}
    2021-11-30T16:47:38.295-0800    info    service/service.go:86   Starting extensions...
    2021-11-30T16:47:38.295-0800    info    service/service.go:91   Starting exporters...
    2021-11-30T16:47:38.295-0800    info    builder/exporters_builder.go:40 Exporter is starting... {"kind": "exporter", "name": "logging"}
    2021-11-30T16:47:38.295-0800    info    builder/exporters_builder.go:48 Exporter started.       {"kind": "exporter", "name": "logging"}
    2021-11-30T16:47:38.295-0800    info    builder/exporters_builder.go:40 Exporter is starting... {"kind": "exporter", "name": "otlp"}
    2021-11-30T16:47:38.295-0800    info    builder/exporters_builder.go:48 Exporter started.       {"kind": "exporter", "name": "otlp"}
    2021-11-30T16:47:38.295-0800    info    service/service.go:96   Starting processors...
    2021-11-30T16:47:38.295-0800    info    builder/pipelines_builder.go:54 Pipeline is starting... {"name": "pipeline", "name": "metrics"}
    2021-11-30T16:47:38.295-0800    info    builder/pipelines_builder.go:65 Pipeline is started.    {"name": "pipeline", "name": "metrics"}
    2021-11-30T16:47:38.295-0800    info    builder/pipelines_builder.go:54 Pipeline is starting... {"name": "pipeline", "name": "traces"}
    2021-11-30T16:47:38.295-0800    info    builder/pipelines_builder.go:65 Pipeline is started.    {"name": "pipeline", "name": "traces"}
    2021-11-30T16:47:38.295-0800    info    service/service.go:101  Starting receivers...
    2021-11-30T16:47:38.295-0800    info    builder/receivers_builder.go:68 Receiver is starting... {"kind": "receiver", "name": "otlp"}
    2021-11-30T16:47:38.295-0800    info    otlpreceiver/otlp.go:68 Starting GRPC server on endpoint 0.0.0.0:4317   {"kind": "receiver", "name": "otlp"}
    2021-11-30T16:47:38.302-0800    info    builder/receivers_builder.go:73 Receiver started.       {"kind": "receiver", "name": "otlp"}
    2021-11-30T16:47:38.302-0800    info    service/telemetry.go:92 Setting up own telemetry...
    2021-11-30T16:47:38.310-0800    info    service/telemetry.go:116        Serving Prometheus metrics      {"address": ":8888", "level": "basic", "service.instance.id": "a8caf36a-00df-407e-b356-23569252e525", "service.version": "latest"}
    2021-11-30T16:47:38.310-0800    info    service/collector.go:250        Starting cmd-otelcol... {"Version": "0.40.0-dev", "NumCPU": 12}
    2021-11-30T16:47:38.310-0800    info    service/collector.go:138        Everything is ready. Begin running and processing data.
    2021-11-30T16:47:38.384-0800    warn    zapgrpc/zapgrpc.go:191  [core] grpc: addrConn.createTransport failed to connect to {otelcol:4317 otelcol:4317 <nil> <nil> 0 <nil>}. Err: connection error: desc = "transport: Error while dialing dial tcp: lookup otelcol: no such host"
    2021-11-30T16:47:42.912-0800    INFO    loggingexporter/logging_exporter.go:40  TracesExporter  {"#spans": 200}
    ```
    
    
    - for all other levels - gRPC logs min log level takes whatever is set for collector log sharing rest of collector's logger configuration.   for example
    
    ```yaml
    service:
      telemetry:
        logs:
          level: "DEBUG"
          encoding: "console"
      pipelines:
        traces:
          receivers: [otlp]
          processors: [batch]
          exporters: [logging, otlp]
    ```
    
    in non development made
    
    ```bash
    
    $ ./bin/cmd-otelcol --config ./bin/config.yaml
    2021-11-30T17:35:09.442-0800    info    builder/exporters_builder.go:40 Exporter is starting... {"kind": "exporter", "name": "otlp"}
    2021-11-30T17:35:09.442-0800    info    zapgrpc/zapgrpc.go:174  [core] original dial target is: "otelcol:4317"
    2021-11-30T17:35:09.443-0800    info    zapgrpc/zapgrpc.go:174  [core] parsed dial target is: {Scheme:otelcol Authority: Endpoint:4317 URL:{Scheme:otelcol Opaque:4317 User: Host: Path: RawPath: ForceQuery:false RawQuery: Fragment: RawFragment:}}
    2021-11-30T17:35:09.443-0800    info    zapgrpc/zapgrpc.go:174  [core] fallback to scheme "passthrough"
    2021-11-30T17:35:09.443-0800    info    zapgrpc/zapgrpc.go:174  [core] parsed dial target is: {Scheme:passthrough Authority: Endpoint:otelcol:4317 URL:{Scheme:passthrough Opaque: User: Host: Path:/otelcol:4317 RawPath: ForceQuery:false RawQuery: Fragment: RawFragment:}}
    2021-11-30T17:35:09.443-0800    info    zapgrpc/zapgrpc.go:174  [core] Channel authority set to "otelcol:4317"
    2021-11-30T17:35:09.443-0800    info    zapgrpc/zapgrpc.go:174  [core] ccResolverWrapper: sending update to cc: {[{otelcol:4317  <nil> <nil> 0 <nil>}] <nil> <nil>}
    2021-11-30T17:35:09.443-0800    info    zapgrpc/zapgrpc.go:174  [core] ClientConn switching balancer to "pick_first"
    2021-11-30T17:35:09.443-0800    info    zapgrpc/zapgrpc.go:174  [core] Channel switches to new LB policy "pick_first"
    2021-11-30T17:35:09.443-0800    info    builder/exporters_builder.go:48 Exporter started.       {"kind": "exporter", "name": "otlp"}
    2021-11-30T17:35:09.443-0800    info    zapgrpc/zapgrpc.go:174  [core] Subchannel Connectivity change to CONNECTING
    2021-11-30T17:35:09.443-0800    info    builder/exporters_builder.go:40 Exporter is starting... {"kind": "exporter", "name": "logging"}
    2021-11-30T17:35:09.443-0800    info    builder/exporters_builder.go:48 Exporter started.       {"kind": "exporter", "name": "logging"}
    2021-11-30T17:35:09.443-0800    info    service/service.go:96   Starting processors...
    2021-11-30T17:35:09.443-0800    info    builder/pipelines_builder.go:54 Pipeline is starting... {"name": "pipeline", "name": "traces"}
    2021-11-30T17:35:09.443-0800    info    zapgrpc/zapgrpc.go:174  [core] Subchannel picks a new address "otelcol:4317" to connect
    2021-11-30T17:35:09.443-0800    info    builder/pipelines_builder.go:65 Pipeline is started.    {"name": "pipeline", "name": "traces"}
    2021-11-30T17:35:09.443-0800    info    zapgrpc/zapgrpc.go:174  [core] pickfirstBalancer: UpdateSubConnState: 0xc0000f4440, {CONNECTING <nil>}
    2021-11-30T17:35:09.443-0800    info    builder/pipelines_builder.go:54 Pipeline is starting... {"name": "pipeline", "name": "metrics"}
    2021-11-30T17:35:09.443-0800    info    zapgrpc/zapgrpc.go:174  [core] Channel Connectivity change to CONNECTING
    2021-11-30T17:35:09.443-0800    info    builder/pipelines_builder.go:65 Pipeline is started.    {"name": "pipeline", "name": "metrics"}
    2021-11-30T17:35:09.443-0800    info    service/service.go:101  Starting receivers...
    2021-11-30T17:35:09.444-0800    info    builder/receivers_builder.go:68 Receiver is starting... {"kind": "receiver", "name": "otlp"}
    2021-11-30T17:35:09.444-0800    info    otlpreceiver/otlp.go:68 Starting GRPC server on endpoint 0.0.0.0:4317   {"kind": "receiver", "name": "otlp"}
    2021-11-30T17:35:09.445-0800    info    builder/receivers_builder.go:73 Receiver started.       {"kind": "receiver", "name": "otlp"}
    2021-11-30T17:35:09.445-0800    info    service/telemetry.go:92 Setting up own telemetry...
    2021-11-30T17:35:09.449-0800    warn    zapgrpc/zapgrpc.go:191  [core] grpc: addrConn.createTransport failed to connect to {otelcol:4317 otelcol:4317 <nil> <nil> 0 <nil>}. Err: connection error: desc = "transport: Error while dialing dial tcp: lookup otelcol: no such host"
    2021-11-30T17:35:09.449-0800    info    zapgrpc/zapgrpc.go:174  [core] Subchannel Connectivity change to TRANSIENT_FAILURE
    2021-11-30T17:35:09.449-0800    info    zapgrpc/zapgrpc.go:174  [core] pickfirstBalancer: UpdateSubConnState: 0xc0000f4440, {TRANSIENT_FAILURE connection error: desc = "transport: Error while dialing dial tcp: lookup otelcol: no such host"}
    2021-11-30T17:35:09.449-0800    info    zapgrpc/zapgrpc.go:174  [core] Channel Connectivity change to TRANSIENT_FAILURE
    2021-11-30T17:35:09.455-0800    info    service/telemetry.go:116        Serving Prometheus metrics      {"address": ":8888", "level": "basic", "service.instance.id": "a579c69f-edb3-4fca-8911-e6fd9a5f5344", "service.version": "latest"}
    2021-11-30T17:35:09.456-0800    info    service/collector.go:243        Starting cmd-otelcol... {"Version": "0.40.0-dev", "NumCPU": 12}
    2021-11-30T17:35:09.456-0800    info    service/collector.go:136        Everything is ready. Begin running and processing data.
    2021-11-30T17:35:10.449-0800    info    zapgrpc/zapgrpc.go:174  [core] Subchannel Connectivity change to IDLE
    2021-11-30T17:35:10.449-0800    info    zapgrpc/zapgrpc.go:174  [core] pickfirstBalancer: UpdateSubConnState: 0xc0000f4440, {IDLE connection error: desc = "transport: Error while dialing dial tcp: lookup otelcol: no such host"}
    2021-11-30T17:35:10.449-0800    info    zapgrpc/zapgrpc.go:174  [core] Channel Connectivity change to IDLE
    2021-11-30T17:35:12.072-0800    info    zapgrpc/zapgrpc.go:174  [transport] transport: loopyWriter.run returning. connection error: desc = "transport is closing"
    2021-11-30T17:35:12.255-0800    INFO    loggingexporter/logging_exporter.go:40  TracesExporter  {"#spans": 2}
    2021-11-30T17:35:28.595-0800    info    zapgrpc/zapgrpc.go:174  [core] Subchannel Connectivity change to TRANSIENT_FAILURE
    2021-11-30T17:35:28.595-0800    info    zapgrpc/zapgrpc.go:174  [core] pickfirstBalancer: UpdateSubConnState: 0xc0000f4440, {TRANSIENT_FAILURE connection error: desc = "transport: Error while dialing dial tcp: lookup otelcol: no such host"}
    2021-11-30T17:35:28.595-0800    info    zapgrpc/zapgrpc.go:174  [core] Channel Connectivity change to TRANSIENT_FAILURE
    2021-11-30T17:35:28.595-0800    info    exporterhelper/queued_retry.go:215      Exporting failed. Will retry the request after interval.        {"kind": "exporter", "name": "otlp", "error": "rpc error: code = Unavailable desc = connection error: desc = \"transport: Error while dialing dial tcp: lookup otelcol: no such host\"", "interval": "13.101300599s"}
    2021-11-30T17:35:32.049-0800    info    zapgrpc/zapgrpc.go:174  [core] Subchannel Connectivity change to IDLE
    2021-11-30T17:35:32.049-0800    info    zapgrpc/zapgrpc.go:174  [core] pickfirstBalancer: UpdateSubConnState: 0xc0000f4440, {IDLE connection error: desc = "transport: Error while dialing dial tcp: lookup otelcol: no such host"}
    2021-11-30T17:35:32.049-0800    info    zapgrpc/zapgrpc.go:174  [core] Channel Connectivity change to IDLE
    
    ```
    
    DEBUG in development mode
    
    ```yaml
    service:
      telemetry:
        logs:
          level: "DEBUG"
          development: true
          encoding: "console"
      pipelines:
        traces:
          receivers: [otlp]
          processors: [batch]
          exporters: [logging, otlp]
    ```
    
    produces
    
    ```bash
    2021-11-30T17:30:55.091-0800    info    builder/pipelines_builder.go:65 Pipeline is started.    {"name": "pipeline", "name": "metrics"}
    2021-11-30T17:30:55.091-0800    info    builder/pipelines_builder.go:54 Pipeline is starting... {"name": "pipeline", "name": "traces"}
    2021-11-30T17:30:55.091-0800    info    zapgrpc/zapgrpc.go:174  [core] Subchannel picks a new address "otelcol:4317" to connect
    2021-11-30T17:30:55.091-0800    info    builder/pipelines_builder.go:65 Pipeline is started.    {"name": "pipeline", "name": "traces"}
    2021-11-30T17:30:55.091-0800    info    zapgrpc/zapgrpc.go:174  [core] pickfirstBalancer: UpdateSubConnState: 0xc00011c8f0, {CONNECTING <nil>}
    2021-11-30T17:30:55.091-0800    info    service/service.go:101  Starting receivers...
    2021-11-30T17:30:55.091-0800    info    zapgrpc/zapgrpc.go:174  [core] Channel Connectivity change to CONNECTING
    2021-11-30T17:30:55.091-0800    info    builder/receivers_builder.go:68 Receiver is starting... {"kind": "receiver", "name": "otlp"}
    2021-11-30T17:30:55.091-0800    info    otlpreceiver/otlp.go:68 Starting GRPC server on endpoint 0.0.0.0:4317   {"kind": "receiver", "name": "otlp"}
    2021-11-30T17:30:55.091-0800    info    builder/receivers_builder.go:73 Receiver started.       {"kind": "receiver", "name": "otlp"}
    2021-11-30T17:30:55.091-0800    info    service/telemetry.go:92 Setting up own telemetry...
    2021-11-30T17:30:55.101-0800    info    service/telemetry.go:116        Serving Prometheus metrics      {"address": ":8888", "level": "basic", "service.instance.id": "38ece474-2cdc-42a3-b442-46477936c2b7", "service.version": "latest"}
    2021-11-30T17:30:55.101-0800    info    service/collector.go:243        Starting cmd-otelcol... {"Version": "0.40.0-dev", "NumCPU": 12}
    2021-11-30T17:30:55.101-0800    info    service/collector.go:136        Everything is ready. Begin running and processing data.
    2021-11-30T17:30:55.236-0800    warn    zapgrpc/zapgrpc.go:191  [core] grpc: addrConn.createTransport failed to connect to {otelcol:4317 otelcol:4317 <nil> <nil> 0 <nil>}. Err: connection error: desc = "transport: Error while dialing dial tcp: lookup otelcol: no such host"
    go.uber.org/zap/zapgrpc.(*Logger).Warningln
            go.uber.org/zap@v1.19.1/zapgrpc/zapgrpc.go:191
    google.golang.org/grpc/internal/grpclog.WarningDepth
            google.golang.org/grpc@v1.42.0/internal/grpclog/grpclog.go:46
    google.golang.org/grpc/grpclog.(*componentData).WarningDepth
            google.golang.org/grpc@v1.42.0/grpclog/component.go:41
    google.golang.org/grpc/internal/channelz.Warningf
            google.golang.org/grpc@v1.42.0/internal/channelz/logging.go:75
    google.golang.org/grpc.(*addrConn).createTransport
            google.golang.org/grpc@v1.42.0/clientconn.go:1315
    google.golang.org/grpc.(*addrConn).tryAllAddrs
            google.golang.org/grpc@v1.42.0/clientconn.go:1249
    google.golang.org/grpc.(*addrConn).resetTransport
            google.golang.org/grpc@v1.42.0/clientconn.go:1184
    google.golang.org/grpc.(*addrConn).connect
            google.golang.org/grpc@v1.42.0/clientconn.go:845
    2021-11-30T17:30:55.237-0800    info    zapgrpc/zapgrpc.go:174  [core] Subchannel Connectivity change to TRANSIENT_FAILURE
    2021-11-30T17:30:55.237-0800    info    zapgrpc/zapgrpc.go:174  [core] pickfirstBalancer: UpdateSubConnState: 0xc00011c8f0, {TRANSIENT_FAILURE connection error: desc = "transport: Error while dialing dial tcp: lookup otelcol: no such host"}
    2021-11-30T17:30:55.237-0800    info    zapgrpc/zapgrpc.go:174  [core] Channel Connectivity change to TRANSIENT_FAILURE
    2021-11-30T17:30:56.238-0800    info    zapgrpc/zapgrpc.go:174  [core] Subchannel Connectivity change to IDLE
    2021-11-30T17:30:56.238-0800    info    zapgrpc/zapgrpc.go:174  [core] pickfirstBalancer: UpdateSubConnState: 0xc00011c8f0, {IDLE connection error: desc = "transport: Error while dialing dial tcp: lookup otelcol: no such host"}
    2021-11-30T17:30:56.238-0800    info    zapgrpc/zapgrpc.go:174  [core] Channel Connectivity change to IDLE
    ^C2021-11-30T17:30:58.448-0800  info    service/collector.go:167        Received signal from OS {"signal": "interrupt"}
    2021-11-30T17:30:58.448-0800    info    service/collector.go:259        Starting shutdown...
    2021-11-30
    ```
    
    **Link to tracking Issue:** #2237
    
    **Testing:** Added unit tests and manual testing
