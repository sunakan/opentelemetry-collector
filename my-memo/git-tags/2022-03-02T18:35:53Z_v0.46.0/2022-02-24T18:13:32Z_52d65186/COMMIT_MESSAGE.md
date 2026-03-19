commit 52d651861c6fb59bb695de1b00b98bf19a96a370
Author: Dani Louca <59848726+dloucasfx@users.noreply.github.com>
Date:   Thu Feb 24 13:13:32 2022 -0500

    [processor/memorylimiter] Only drops traces, not logs or metrics
    
    Signed-off-by: Dani Louca <dlouca@splunk.com>
    
    **Description:**
    
    This change https://github.com/open-telemetry/opentelemetry-collector/commit/062e64f1d7466400cbc5b0bd727ec94175a0e0de caused the memory limiter to "only" start the `checkMemLimits` routine for the ml instance used by the traces processor .
    In other words, metrics and logs processor will NOT [drop/refuse](https://github.com/open-telemetry/opentelemetry-collector/blob/main/processor/memorylimiterprocessor/memorylimiter.go#L206) data and will pass them down to the next consumer regardless of the current memory pressure as their instance of ml->forcingDrop will not be set.
    
    The simplest solution, is to call start for each processor (metrics, logs, traces) , but this will not be efficient as we'll be running 3 instances of `checkMemLimits`, ie: multiple GC .
    But at the same we need to allow multiple instances, with different configs, example: `memory_limiter/another` and `memory_limiter`
    
    ````
    extensions:
      memory_ballast:
        size_mib: 4
    
    receivers:
      otlp:
        protocols:
          grpc:
          http:
    processors:
      memory_limiter:
        check_interval: 2s
        limit_mib: 10
    
      memory_limiter/another:
        check_interval: 1s
        limit_mib: 100
    exporters:
      logging:
        logLevel: info
    
    service:
      telemetry:
        logs:
          level: "info"
      pipelines:
        metrics:
          receivers: [otlp]
          processors: [memory_limiter]
          exporters: [logging]
        metrics/default:
          receivers: [otlp]
          processors: [memory_limiter]
          exporters: [logging]
        traces:
          receivers: [otlp]
          processors: [memory_limiter/another]
          exporters: [logging]
      extensions: [memory_ballast]
    ````
    
    The fix adds a global map to keep track of the different instance and add ~~sync once~~ mutex for the start and shutdown call, so only the first processor can launch the `checkMemLimits` routine and the last one to call `shutdown` to take it down.
    If shutdown was called and no `checkMemLimits` has started, then we'll return an error message; unit tests were updated to handle this.
    
    
    **Testing:**
    Tested with above config and using splunk otel instance with valid data.
    Made sure only a single `checkMemLimits` is running when there is a single config for memory-limiter and more than one when we have multiple.
    I also verified that under memory pressure, when we pass the soft limit, all data types, traces, logs and metrics are getting dropped.
    
    One we agree on this solution, I will look into adding more unit test to validate the change
