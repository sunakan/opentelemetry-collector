commit 9b4911bea14565d0d5c561d9d70c4e6c71c46c8d
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Tue May 27 10:07:25 2025 -0600

    [service]: use configured logger whenever possible (#13081)
    
    #### Description
    
    I was using the supervised collector today and ran into an issue where
    the agent (collector) was crashing on startup and I wasn't seeing the
    logs exported via the configured logger, but I knew it existed bc I was
    getting the `Setting up own telemetry...` log.
    
    Turns out in `service.New`, once we've created the logger, we aren't
    using it to log and following errors. Instead, they are being returned
    by `service.New` and handled by the fallbackLogger.
    
    I propose that, since we have a logger, we use it.
    
    As a followup it would be nice if any confmap errors could be reported
    using the instantiated logger, but that would be a bigger refactor.
    
    #### Testing
    
    Tested locally with the following config:
    
    ```yaml
    receivers:
      nop:
    exporters:
      nop:
      otlphttp:
        endpoint: "${MISSING_ENV_VAR}:4318"
    service:
      pipelines:
        traces:
          receivers: [nop]
          processors: []
          exporters: [otlphttp]
      telemetry:
        logs:
          processors:
            - batch:
                exporter:
                  otlp:
                    endpoint: https://api.honeycomb.io:443
                    headers:
                      - name: x-honeycomb-team
                        value: `[READACTED]`
                    protocol: http/protobuf
    ```
    
    console output:
    
    ```
    2025-05-22T17:25:30.764-0600    info    service/service.go:200  Setting up own telemetry...     {"resource": {}}
    2025-05-22T17:25:30.764-0600    error   service/service.go:223  failed to initialize service graph      {"resource": {}, "error": "failed to build pipelines: failed to create \"otlphttp\" exporter for data type \"traces\": endpoint must be a valid URL"}
    go.opentelemetry.io/collector/service.New
            /Users/tylerhelmuth/projects/opentelemetry-collector/service/service.go:223
    go.opentelemetry.io/collector/otelcol.(*Collector).setupConfigurationComponents
            /Users/tylerhelmuth/projects/opentelemetry-collector/otelcol/collector.go:197
    go.opentelemetry.io/collector/otelcol.(*Collector).Run
            /Users/tylerhelmuth/projects/opentelemetry-collector/otelcol/collector.go:312
    go.opentelemetry.io/collector/otelcol.NewCommand.func1
            /Users/tylerhelmuth/projects/opentelemetry-collector/otelcol/command.go:39
    github.com/spf13/cobra.(*Command).execute
            /Users/tylerhelmuth/go/1.24.0/pkg/mod/github.com/spf13/cobra@v1.9.1/command.go:1015
    github.com/spf13/cobra.(*Command).ExecuteC
            /Users/tylerhelmuth/go/1.24.0/pkg/mod/github.com/spf13/cobra@v1.9.1/command.go:1148
    github.com/spf13/cobra.(*Command).Execute
            /Users/tylerhelmuth/go/1.24.0/pkg/mod/github.com/spf13/cobra@v1.9.1/command.go:1071
    main.runInteractive
            /Users/tylerhelmuth/projects/opentelemetry-collector/cmd/otelcorecol/main.go:57
    main.run
            /Users/tylerhelmuth/projects/opentelemetry-collector/cmd/otelcorecol/main_others.go:10
    main.main
            /Users/tylerhelmuth/projects/opentelemetry-collector/cmd/otelcorecol/main.go:50
    runtime.main
            /Users/tylerhelmuth/go/1.24.0/pkg/mod/golang.org/toolchain@v0.0.1-go1.24.1.darwin-arm64/src/runtime/proc.go:283
    2025-05-22T17:25:30.758-0600    warn    envprovider/provider.go:61      Configuration references unset environment variable     {"name": "MISSING_ENV_VAR"}
    Error: failed to build pipelines: failed to create "otlphttp" exporter for data type "traces": endpoint must be a valid URL
    2025/05/22 17:25:30 collector server run finished with error: failed to build pipelines: failed to create "otlphttp" exporter for data type "traces": endpoint must be a valid URL
    ```
    
    Proof that the error log exported:
    
    ![image](https://github.com/user-attachments/assets/09ea7f06-bae1-41b8-ad8f-b286bf18e2b5)
