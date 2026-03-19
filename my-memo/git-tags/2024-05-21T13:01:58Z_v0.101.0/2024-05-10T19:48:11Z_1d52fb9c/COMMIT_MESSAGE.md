commit 1d52fb9c3cca27f5101b25abebd1a3bfb09bf852
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Fri May 10 13:48:11 2024 -0600

    [confmap] Add logger to ConverterSettings (#10135)
    
    #### Description
    Adds a Logger to ConverterSettings to enable logging from within
    converters. Also update the expand converter to log a warning if the env
    var is empty or missing.
    
    #### Link to tracking issue
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/9162
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/5615
    
    #### Testing
    
    Unit tests and local testing
    
    
    ![image](https://github.com/open-telemetry/opentelemetry-collector/assets/12352919/af5dd1e2-62f9-4272-97c7-da57166ef07e)
    
    ```yaml
    receivers:
      nop:
    
    exporters:
      otlphttp:
        endpoint: http://0.0.0.0:4317
        headers:
          # Not set
          x-test: $TEMP3
      debug:
        # set to "detailed"
        verbosity: $TEMP
    
    service:
      telemetry:
        logs:
          level: info
      pipelines:
        traces:
          receivers:
            - nop
          exporters:
            - otlphttp
            - debug
    ```
    
    #### Documentation
    Added godoc comments
