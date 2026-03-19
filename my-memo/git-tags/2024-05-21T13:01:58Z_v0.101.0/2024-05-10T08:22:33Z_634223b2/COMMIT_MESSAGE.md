commit 634223b291cc00fae63cc4e1354c84cd9ca52388
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Fri May 10 02:22:33 2024 -0600

    [otelcol] Add a custom zapcore.Core for confmap logging (#10056)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Provides a logger to confmap that buffers logs in memory until the
    primary logger can be used. Once the primary logger exists, places that
    used the original logger are given the updated Core.
    
    If an error occurs that would shut down the collector before the primary
    logger could be created, the logs are written to stdout/err using a
    fallback logger.
    
    Alternative to
    https://github.com/open-telemetry/opentelemetry-collector/pull/10008
    
    I've pushed the testing I did to show how the logger successfully
    updates. Before config resolution the debug log in confmap is not
    printed, but afterwards it is.
    
    test config:
    ```yaml
    receivers:
      nop:
    
    exporters:
      otlphttp:
        endpoint: http://0.0.0.0:4317
        headers:
          # Not set
          x-test: ${env:TEMP3}
      debug:
        # set to "detailed"
        verbosity: $TEMP
    
    service:
      telemetry:
        logs:
          level: debug
      pipelines:
        traces:
          receivers:
            - nop
          exporters:
            - debug
    ```
    
    
    ![image](https://github.com/open-telemetry/opentelemetry-collector/assets/12352919/6a17993f-1f97-4c54-9165-5c34dd58d108)
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/9162
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/5615
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    If we like this approach I'll add tests
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    ---------
    
    Co-authored-by: Dan Jaglowski <jaglows3@gmail.com>
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
