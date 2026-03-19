commit 3e13ca11e000ed3b5494b4565c1cedbd8e24815e
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Fri Oct 25 20:47:50 2024 -0700

    [exporterqueue] Bare minimum frame of queue batcher + unit test. (#11532)
    
    #### Description
    
    This PR is a bare minimum implementation of a component called queue
    batcher. On completion, this component will replace `consumers` in
    `queue_sender`, and thus moving queue-batch from a pulling model instead
    of pushing model.
    
    Limitations of the current code
    * This implements only the case where batching is disabled, which means
    no merge of splitting of requests + no timeout flushing.
    * This implementation does not enforce an upper bound on concurrency
    
    All these code paths are marked as panic currently, and they will be
    replaced with actual implementation in coming PRs. This PR is split from
    https://github.com/open-telemetry/opentelemetry-collector/pull/11507 for
    easier review.
    
    Design doc:
    
    https://docs.google.com/document/d/1y5jt7bQ6HWt04MntF8CjUwMBBeNiJs2gV4uUZfJjAsE/edit?usp=sharing
    
    
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
    https://github.com/open-telemetry/opentelemetry-collector/issues/10368
