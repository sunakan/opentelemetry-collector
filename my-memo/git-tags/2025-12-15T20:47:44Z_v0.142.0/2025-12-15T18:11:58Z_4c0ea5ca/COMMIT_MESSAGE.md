commit 4c0ea5ca67ec9b46942a3964904a0a8bfaefc838
Author: Shivanth MP <shivanth.metchem@deliveryhero.com>
Date:   Mon Dec 15 19:11:58 2025 +0100

    MemoryLimiter extension as an http/grpc middleware (#14071)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    This PR augments the memorylimiter extension to be an HTTP/GRPC
    middleware. The extension can be used as an HTTP/GRPC middleware once
    this is merged.
    Example:
    
    ```
    receivers:
      otlp:
        protocols:
          grpc:
            middlewares:
              - id: memory_limiter
          http:
            middlewares:
              - id: memory_limiter
    
    extensions:
      memory_limiter:
        check_interval: 1s
        limit_percentage: 1
        spike_limit_percentage: 0.05
    
    ..........
    ```
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #9591
    Fixes #14081
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Setup a minimal collector to test that the middleware is indeed
    ratelimiting while the memory usage is closer to limit.
    ```
    receivers:
      otlp:
        protocols:
          grpc:
            middlewares:
              - id: memory_limiter
          http:
            middlewares:
              - id: memory_limiter
    processors:
    exporters:
      debug:
        verbosity: detailed
        sampling_initial: 5
        sampling_thereafter: 200
        use_internal_logger: false
    
    extensions:
      memory_limiter:
        check_interval: 1s
        limit_percentage: 1 # this is the minimum possible, since it's an integer.
        spike_limit_percentage: 0.05
    
    service:
      extensions:
        - memory_limiter
      pipelines:
        metrics:
          receivers: [otlp]
          processors: []
          exporters: [debug]
        traces:
          receivers: [otlp]
          processors: []
          exporters: [debug]
        logs:
          receivers: [otlp]
          processors: []
          exporters: [debug]
      telemetry:
        logs:
          level: debug
          development: false
          disable_caller: false
          disable_stacktrace: false
    
    ```
    
    #### Documentation
    Updated the readme for memory limiter extension.
    
    ---------
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
    Co-authored-by: Joshua MacDonald <jmacd@users.noreply.github.com>
