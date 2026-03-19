commit 79660359a61892d050fe815fdb03c7f2e0f50b00
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Fri Sep 6 05:31:43 2024 -0700

    [exporter] [chore] Initialize batchSender and queueSender after configuration (#11041)
    
    #### Description
    
    This PR changes initialization of `batchSender` and `queueSender` to
    AFTER configuration. That way we get to access `queueConfig` and
    `batcherConfig` in the same place.
    
    Context: This is some pre-work for changing queue->batch from a pushing
    model to a pulling model. We will be initialization a
    `queueBatchSender(queueConfig, batcherConfig)` if both queue and batcher
    are enabled and initialize `batchSender(batchConfig)` if only batcher is
    enabled. This change enables us to achieve the goal without changing
    config API.
    
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/issues/10368
    
    #### Testing
    
    Ran `opentelemetry-collector$ make` to make sure all tests still pass.
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
