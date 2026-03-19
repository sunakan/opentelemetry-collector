commit 18e18b21da7a8ab5de794c197bd2c4f83e38623e
Author: Sudipto Baral <sudiptobaral.me@gmail.com>
Date:   Sun Feb 23 20:06:54 2025 -0500

    Add pipeline ID to the error message for unused connectors. (#12410)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    As mentioned in this
    https://github.com/open-telemetry/opentelemetry-collector/issues/8721#issuecomment-1813468623,
    the error message for unused connectors currently lacks specific
    pipeline names, making debugging more difficult.
    
    This PR enhances the error message by including pipeline names in the
    `[signal/name]` format, consistent with how they appear in
    `config.yaml`. This provides a better context for identifying
    misconfigurations.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Related to #8721
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    A few scenarios and example output are given below. I will do additional
    testing and add unit tests if necessary.
    
    **1. Used as a receiver but not used as an exporter with 1 signal**
    <details>
      <summary><strong>config.yaml</strong></summary>
    
    ```yaml
    receivers:
      otlp:
        protocols:
          grpc:
    exporters:
      debug:
    connectors:
      forward:
    service:
      pipelines:
        logs/in:
          receivers: [otlp]
          processors: []
          exporters: [debug]
        logs/out:
          receivers: [forward]
          processors: []
          exporters: [debug]
    ```
    </details>
    
    Main Branch Output:
    ```
    Error: failed to build pipelines: connector "forward" used as receiver in logs pipeline but not used in any supported exporter pipeline
    ```
    Proposed Output:
    ```
    Error: failed to build pipelines: connector "forward" used as receiver in [logs/out] pipeline but not used in any supported exporter pipeline
    ```
    
    **2. Plain**
    <details>
      <summary><strong>config.yaml</strong></summary>
    
    ```yaml
    receivers:
      otlp:
        protocols:
          grpc:
    exporters:
      debug:
    connectors:
      forward:
    service:
      pipelines:
        traces:
          receivers: [ otlp ]
          processors: [ ]
          exporters: [ forward ]
        metrics:
          receivers: [ forward ]
          processors: [ ]
          exporters: [ debug ]
    ```
    </details>
    
    Main Branch Output:
    ```
    Error: failed to build pipelines: connector "forward" used as exporter in traces pipeline but not used in any supported receiver pipeline
    ```
    Proposed Output:
    ```
    Error: failed to build pipelines: connector "forward" used as exporter in [traces] pipeline but not used in any supported receiver pipeline
    ```
    **3. Multiple pipeline**
    <details>
      <summary><strong>config.yaml</strong></summary>
    
    ```yaml
    receivers:
      otlp:
        protocols:
          grpc:
    exporters:
      debug:
    connectors:
      forward:
    service:
      pipelines:
        logs/in:
          receivers: [otlp]
          processors: []
          exporters: [forward]
        logs/in2:
          receivers: [ otlp ]
          processors: [ ]
          exporters: [ forward ]
        logs/out:
          receivers: [otlp]
          processors: []
          exporters: [debug]
        traces:
          receivers: [ otlp ]
          processors: [ ]
          exporters: [ forward ]
        metrics:
          receivers: [ forward ]
          processors: [ ]
          exporters: [ debug ]
    ```
    </details>
    
    Main Branch Output:
    ```
    Error: failed to build pipelines: connector "forward" used as exporter in logs pipeline but not used in any supported receiver pipeline
    ```
    Proposed Output:
    ```
    Error: failed to build pipelines: connector "forward" used as exporter in [logs/in2 logs/in] pipeline but not used in any supported receiver pipeline
    
    ```
    
    ---------
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
