commit fed6dfe76df026fd371d6b3d102d1e3c31ae34d7
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Fri Oct 4 19:59:22 2024 -0700

    [exporter] internal/persistent_queue::OnProcessingFinished is changed to a class function instead of a callback (#11338)
    
    #### Description
    
    Why this change?
    Each request from the queue contains multiple items, and those items
    could be merge-split into multiple batches when they are sent out (see
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
    for more about exporter batcher). We would like to book-keep those
    cases, and only call `onProcessingFinished` when all such batches has
    gone out. In this PR, `onProcessingFinished` is changed from a callback
    to a method function because it is easier to book keep index instead of
    functions.
    
    #### Link to tracking issue
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
    https://github.com/open-telemetry/opentelemetry-collector/issues/10368
    
    #### Testing
    `exporter/internal/queue/persistent_queue_test.go`
    
    #### Documentation
    
    This is an internal change invisible to the users.
    
    ---------
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
