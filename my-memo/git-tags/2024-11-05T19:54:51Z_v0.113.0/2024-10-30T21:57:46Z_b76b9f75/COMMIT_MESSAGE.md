commit b76b9f75b604154bab11392259a85d941c239288
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Wed Oct 30 14:57:46 2024 -0700

    [exporterqueue] Default Batcher that reads from the queue, batches and exports  (#11546)
    
    #### Description
    
    This PR follows
    https://github.com/open-telemetry/opentelemetry-collector/pull/11540 and
    implements support for item-count based batching for queue batcher.
    
    Limitation: This PR supports merging request but not splitting request.
    In other words, it support specifying a minimum request size but not a
    maximum request size.
    
    Design doc:
    
    https://docs.google.com/document/d/1y5jt7bQ6HWt04MntF8CjUwMBBeNiJs2gV4uUZfJjAsE/edit?usp=sharing
    
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
    https://github.com/open-telemetry/opentelemetry-collector/issues/10368
