commit bfca1eb624a8db05ce056959bb0d1b00139b8bc1
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Fri Jan 22 17:51:29 2021 +0100

    Improve connection state logging for Jaeger exporter (#2239)
    
    **Description:**
    Adds a connection state reporter to the Jaeger exporter sending state changes to the log and as a metric.
    
    **Link to tracking Issue:** Closes #1861, as it's the best we can do at this exporter level. On a more general level, the collector could provide more verbose info about the underlying gRPC connections. See #2237 for more information.
    
    **Testing:** unit and manual tests.
    
    **Documentation:** None.
    
    Here are the complete logs for an OpenTelemetry Collector that got started without a Jaeger backend available. Note that the config.yaml contains two exporters, one (`jaeger`) with the `insecure: true` option, and a second one (`jaeger/2`) without this option. A Jaeger all-in-one is then started, without TLS support. This ends with the first exporter eventually transitioning to "READY", but the second won't.
    ```
    2020-12-02T11:17:26.116+0100    INFO    service/service.go:409  Starting OpenTelemetry Collector...     {"Version": "latest", "GitHash": "<NOT PROPERLY GENERATED>", "NumCPU": 12}
    2020-12-02T11:17:26.116+0100    INFO    service/service.go:253  Setting up own telemetry...
    2020-12-02T11:17:26.130+0100    INFO    service/telemetry.go:101        Serving Prometheus metrics      {"address": "localhost:8888", "level": 0, "service.instance.id": "b4f3bc7c-2593-48e5-9ef9-8b585bbcf4fc"}
    2020-12-02T11:17:26.131+0100    INFO    service/service.go:290  Loading configuration...
    2020-12-02T11:17:26.131+0100    INFO    service/service.go:301  Applying configuration...
    2020-12-02T11:17:26.131+0100    INFO    service/service.go:322  Starting extensions...
    2020-12-02T11:17:26.132+0100    INFO    builder/exporters_builder.go:306        Exporter is enabled.    {"component_kind": "exporter", "exporter": "jaeger"}
    2020-12-02T11:17:26.132+0100    INFO    builder/exporters_builder.go:306        Exporter is enabled.    {"component_kind": "exporter", "exporter": "jaeger/2"}
    2020-12-02T11:17:26.132+0100    INFO    service/service.go:337  Starting exporters...
    2020-12-02T11:17:26.132+0100    INFO    builder/exporters_builder.go:92 Exporter is starting... {"component_kind": "exporter", "component_type": "jaeger", "component_name": "jaeger"}
    2020-12-02T11:17:26.132+0100    INFO    jaegerexporter/exporter.go:183  State of the connection with the Jaeger Collector backend       {"component_kind": "exporter", "component_type": "jaeger", "component_name": "jaeger", "state": "CONNECTING"}
    2020-12-02T11:17:26.132+0100    INFO    builder/exporters_builder.go:97 Exporter started.       {"component_kind": "exporter", "component_type": "jaeger", "component_name": "jaeger"}
    2020-12-02T11:17:26.132+0100    INFO    builder/exporters_builder.go:92 Exporter is starting... {"component_kind": "exporter", "component_type": "jaeger", "component_name": "jaeger/2"}
    2020-12-02T11:17:26.132+0100    INFO    jaegerexporter/exporter.go:183  State of the connection with the Jaeger Collector backend       {"component_kind": "exporter", "component_type": "jaeger", "component_name": "jaeger/2", "state": "CONNECTING"}
    2020-12-02T11:17:26.132+0100    INFO    builder/exporters_builder.go:97 Exporter started.       {"component_kind": "exporter", "component_type": "jaeger", "component_name": "jaeger/2"}
    2020-12-02T11:17:26.132+0100    INFO    builder/pipelines_builder.go:207        Pipeline is enabled.    {"pipeline_name": "traces", "pipeline_datatype": "traces"}
    2020-12-02T11:17:26.132+0100    INFO    service/service.go:350  Starting processors...
    2020-12-02T11:17:26.132+0100    INFO    builder/pipelines_builder.go:51 Pipeline is starting... {"pipeline_name": "traces", "pipeline_datatype": "traces"}
    2020-12-02T11:17:26.132+0100    INFO    builder/pipelines_builder.go:61 Pipeline is started.    {"pipeline_name": "traces", "pipeline_datatype": "traces"}
    2020-12-02T11:17:26.132+0100    INFO    builder/receivers_builder.go:235        Receiver is enabled.    {"component_kind": "receiver", "component_type": "otlp", "component_name": "otlp", "datatype": "traces"}
    2020-12-02T11:17:26.132+0100    INFO    service/service.go:362  Starting receivers...
    2020-12-02T11:17:26.132+0100    INFO    builder/receivers_builder.go:70 Receiver is starting... {"component_kind": "receiver", "component_type": "otlp", "component_name": "otlp"}
    2020-12-02T11:17:26.132+0100    INFO    otlpreceiver/otlp.go:93 Starting GRPC server on endpoint 0.0.0.0:4317   {"component_kind": "receiver", "component_type": "otlp", "component_name": "otlp"}
    2020-12-02T11:17:26.132+0100    INFO    otlpreceiver/otlp.go:130        Setting up a second GRPC listener on legacy endpoint 0.0.0.0:55680      {"component_kind": "receiver", "component_type": "otlp", "component_name": "otlp"}
    2020-12-02T11:17:26.132+0100    INFO    otlpreceiver/otlp.go:93 Starting GRPC server on endpoint 0.0.0.0:55680  {"component_kind": "receiver", "component_type": "otlp", "component_name": "otlp"}
    2020-12-02T11:17:26.132+0100    INFO    builder/receivers_builder.go:75 Receiver started.       {"component_kind": "receiver", "component_type": "otlp", "component_name": "otlp"}
    2020-12-02T11:17:26.132+0100    INFO    service/service.go:265  Everything is ready. Begin running and processing data.
    2020-12-02T11:17:27.132+0100    INFO    jaegerexporter/exporter.go:183  State of the connection with the Jaeger Collector backend       {"component_kind": "exporter", "component_type": "jaeger", "component_name": "jaeger/2", "state": "TRANSIENT_FAILURE"}
    2020-12-02T11:17:28.132+0100    INFO    jaegerexporter/exporter.go:183  State of the connection with the Jaeger Collector backend       {"component_kind": "exporter", "component_type": "jaeger", "component_name": "jaeger", "state": "TRANSIENT_FAILURE"}
    2020-12-02T11:17:43.132+0100    INFO    jaegerexporter/exporter.go:183  State of the connection with the Jaeger Collector backend       {"component_kind": "exporter", "component_type": "jaeger", "component_name": "jaeger", "state": "READY"}
    ```
    
    And here are the metrics for the final state:
    
    ```
    # HELP otelcol_jaegerexporter_conn_state Last connection state: 0 = Idle, 1 = Connecting, 2 = Ready, 3 = TransientFailure, 4 = Shutdown
    # TYPE otelcol_jaegerexporter_conn_state gauge
    otelcol_jaegerexporter_conn_state{exporter_name="jaeger",service_instance_id="341f6179-0c34-4ad1-b2e5-19b2bed4c9d1"} 2
    otelcol_jaegerexporter_conn_state{exporter_name="jaeger/2",service_instance_id="341f6179-0c34-4ad1-b2e5-19b2bed4c9d1"} 3
    ```
    
    ﻿Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
