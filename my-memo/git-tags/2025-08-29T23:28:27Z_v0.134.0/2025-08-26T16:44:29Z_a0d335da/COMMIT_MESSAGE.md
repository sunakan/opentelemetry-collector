commit a0d335da98a3eba6ccac52322823680e94d0ed4d
Author: Vishal Raj <vishal.raj@elastic.co>
Date:   Tue Aug 26 17:44:29 2025 +0100

    Allow num_consumers to be greater than 1 if batch enabled and partitioner defined (#13607)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    As per
    https://github.com/open-telemetry/opentelemetry-collector/issues/12473,
    the number of consumers was set to `1` to prevent contention due to
    single-threaded batchers. However, with the introduction of
    [multiBatcher](https://github.com/open-telemetry/opentelemetry-collector/blob/aef8b1c3d26c062bc31e4f96c54f5f2a03b304c6/exporter/exporterhelper/internal/queuebatch/multi_batcher.go#L19)
    the batching will be done in multiple goroutines.
    
    Optimally a dynamic configuration to update the number of consumers to
    the number of partitions would be ideal, however, this could also cause
    contention as the queue is not partitioned and we can have hotspots
    where one partioner messages are more than other partitions. This PR
    makes it possible to configure the number of consumers to be greater
    than `1` statically (based on otel config) which should be better than
    what we have right now which bottlenecks the consumption even with
    partitioned batchers.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/12473
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    N/A
    
    <!--Describe the documentation added.-->
    #### Documentation
    N/A
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Joshua MacDonald <jmacd@users.noreply.github.com>
