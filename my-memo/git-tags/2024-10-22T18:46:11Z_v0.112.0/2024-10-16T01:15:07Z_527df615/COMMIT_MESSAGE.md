commit 527df61589fe1f3e1e307f6bf5ba56dbc7eea1b2
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Tue Oct 15 18:15:07 2024 -0700

    [exporter] Disable the API to pass in configurations using a callback that operates on batch sender (#11448)
    
    #### Description
    
    As part of the effort to solve
    https://github.com/open-telemetry/opentelemetry-collector/issues/10368,
    we no longer guarantee to initialize a `batchSender` when `batcher` is
    enabled. Therefore, we would like to remove the interface to set
    `mergeFunc` and `mergeSplitFunc` as a callback that operates on
    `batchSender`. Instead, users should use the alternative
    `WithBatchFuncs` that is a callback that operates `baseExporter`.
    
    Context:
    https://github.com/open-telemetry/opentelemetry-collector/pull/11414
    
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
    https://github.com/open-telemetry/opentelemetry-collector/issues/10368
    
    ---------
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
