commit d29c591290786b93bd9a1d286d3b1f63b8de90bb
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Thu Aug 31 13:10:14 2023 -0300

    Add stability levels to components output (#8289)
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/9518
    
    Example output:
    
    ```
    buildinfo:
        command: otelcorecol
        description: Local OpenTelemetry Collector binary, testing only.
        version: 0.83.0-dev
    receivers:
        - name: otlp
          stability:
            logs: Beta
            metrics: Stable
            traces: Stable
    processors:
        - name: memory_limiter
          stability:
            logs: Beta
            metrics: Beta
            traces: Beta
        - name: batch
          stability:
            logs: Stable
            metrics: Stable
            traces: Stable
    exporters:
        - name: logging
          stability:
            logs: Development
            metrics: Development
            traces: Development
        - name: otlp
          stability:
            logs: Beta
            metrics: Stable
            traces: Stable
        - name: otlphttp
          stability:
            logs: Beta
            metrics: Stable
            traces: Stable
    connectors:
        - name: forward
          stability:
            logs-to-logs: Beta
            logs-to-metrics: Undefined
            logs-to-traces: Undefined
            metrics-to-logs: Undefined
            metrics-to-metrics: Beta
            metrics-to-traces: Undefined
            traces-to-logs: Undefined
            traces-to-metrics: Undefined
            traces-to-traces: Beta
    extensions:
        - name: memory_ballast
          stability:
            extension: Beta
        - name: zpages
          stability:
            extension: Beta
    ```
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    ---------
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
