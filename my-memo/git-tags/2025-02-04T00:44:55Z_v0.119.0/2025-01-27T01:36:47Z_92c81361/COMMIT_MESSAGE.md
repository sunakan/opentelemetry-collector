commit 92c81361f495739b14fc6a84183532b31c9e2073
Author: Marlon Ou <omzmarlon@gmail.com>
Date:   Sun Jan 26 17:36:47 2025 -0800

    Pass the missing async error channel into telemetry.Settings (#12111)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Pass the missing async error channel into telemetry.Settings
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #11417
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    With the same setup as in #11417, building new otelcol with the changes
    in this PR, and running 2 instances with the same config using the same
    metric port, we would see proper crash error messages:
    ```
    # config used:
    receivers:
      nop:
    exporters:
      nop:
    service:
      pipelines:
        logs:
          receivers:
            - nop
          exporters:
            - nop
      telemetry:
        metrics:
          readers:
          - pull:
              exporter:
                prometheus:
                  host: localhost
                  port: 8889
    ```
    
    ```
    # first instance log:
    ./otelcol-custom --config otel-config.yaml
    2025-01-16T17:36:34.638-0800    info    service@v0.117.0/service.go:165 Setting up own telemetry...
    2025-01-16T17:36:34.638-0800    info    telemetry/metrics.go:70 Serving metrics {"address": "localhost:8889", "metrics level": "Normal"}
    2025-01-16T17:36:34.639-0800    info    service@v0.117.0/service.go:231 Starting otelcol-custom...      {"Version": "", "NumCPU": 16}
    2025-01-16T17:36:34.639-0800    info    extensions/extensions.go:39     Starting extensions...
    2025-01-16T17:36:34.639-0800    info    service@v0.117.0/service.go:254 Everything is ready. Begin running and processing data.
    ```
    
    ```
    # second instance's log (using same config)
    ./otelcol-custom --config otel-config.yaml
    2025-01-16T17:36:37.270-0800    info    service@v0.117.0/service.go:165 Setting up own telemetry...
    2025-01-16T17:36:37.270-0800    info    telemetry/metrics.go:70 Serving metrics {"address": "localhost:8889", "metrics level": "Normal"}
    2025-01-16T17:36:37.271-0800    info    service@v0.117.0/service.go:231 Starting otelcol-custom...      {"Version": "", "NumCPU": 16}
    2025-01-16T17:36:37.271-0800    info    extensions/extensions.go:39     Starting extensions...
    2025-01-16T17:36:37.271-0800    info    service@v0.117.0/service.go:254 Everything is ready. Begin running and processing data.
    2025-01-16T17:36:37.273-0800    error   otelcol@v0.117.0/collector.go:325       Asynchronous error received, terminating process    {"error": "listen tcp 127.0.0.1:8889: bind: address already in use"}
    go.opentelemetry.io/collector/otelcol.(*Collector).Run
            go.opentelemetry.io/collector/otelcol@v0.117.0/collector.go:325
    go.opentelemetry.io/collector/otelcol.NewCommand.func1
            go.opentelemetry.io/collector/otelcol@v0.117.0/command.go:36
    github.com/spf13/cobra.(*Command).execute
            github.com/spf13/cobra@v1.8.1/command.go:985
    github.com/spf13/cobra.(*Command).ExecuteC
            github.com/spf13/cobra@v1.8.1/command.go:1117
    github.com/spf13/cobra.(*Command).Execute
            github.com/spf13/cobra@v1.8.1/command.go:1041
    main.runInteractive
            go.opentelemetry.io/collector/cmd/builder/main.go:49
    main.run
            go.opentelemetry.io/collector/cmd/builder/main_others.go:10
    main.main
            go.opentelemetry.io/collector/cmd/builder/main.go:42
    runtime.main
            runtime/proc.go:272
    2025-01-16T17:36:37.273-0800    info    service@v0.117.0/service.go:296 Starting shutdown...
    2025-01-16T17:36:37.274-0800    info    extensions/extensions.go:66     Stopping extensions...
    2025-01-16T17:36:37.274-0800    info    service@v0.117.0/service.go:310 Shutdown complete.
    ```
    
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Antoine Toulme <antoine@toulme.name>
