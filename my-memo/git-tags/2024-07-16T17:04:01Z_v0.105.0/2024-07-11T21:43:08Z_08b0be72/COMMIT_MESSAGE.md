commit 08b0be72555a376659ce49df6817cf34f0daa9fa
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Thu Jul 11 23:43:08 2024 +0200

    [telemetry] Add ability to set service.name for spans emitted by the Collector (#10490)
    
    #### Description
    This PR bridges the config that is exposed to Collector users to the
    internal format expected by the config helpers around the tracer
    provider.
    
    #### Link to tracking issue
    Fixes #10489
    
    #### Testing
    Manual testing performed.
    
    Config:
    ```yaml
    receivers:
      otlp:
        protocols:
          http:
          grpc:
    
    exporters:
      debug:
    
    service:
      pipelines:
        traces:
          receivers: [otlp]
          exporters: [debug]
        metrics:
          receivers: [otlp]
          exporters: [debug]
        logs:
          receivers: [otlp]
          exporters: [debug]
      telemetry:
        traces:
          processors:
            - batch:
                schedule_delay: 1000
                exporter:
                  otlp:
                    endpoint: https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/traces
                    protocol: http/protobuf
                    headers:
                      Authorization: "Basic ..."
        metrics:
          level: detailed
          readers:
            - periodic:
                exporter:
                  otlp:
                    endpoint: https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/metrics
                    protocol: http/protobuf
                    headers:
                      Authorization: "Basic ..."
        resource:
          "service.name": "otelcol-own-telemetry"
    ```
    
    Sent this telemetry to the collector:
    ```console
    telemetrygen traces --traces 1 --otlp-insecure --otlp-attributes='cookbook="own-telemetry"'
    ```
    
    Resulting in this:
    
    
    ![image](https://github.com/open-telemetry/opentelemetry-collector/assets/13387/b55d281b-8941-4b78-9f16-c08f495b6e89)
    
    
    #### Documentation
    None.
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    ---------
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
