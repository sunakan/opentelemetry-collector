commit 4782ad0f0d18f4ad9a8df384d0b65a72d95a27e7
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Mon Dec 2 13:41:26 2024 -0800

    [exporter] Flip on queue batcher (#11637)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR solves
    https://github.com/open-telemetry/opentelemetry-collector/issues/10368.
    
    Previously we use a pushing model between the queue and the batch,
    resulting the batch size to be constrained by the
    `sending_queue.num_consumers`, because the batch cannot accumulate more
    than `sending_queue.num_consumers` blocked goroutines provide.
    
    This PR changes it to a pulling model. We read from the queue until
    threshold is met or timeout, then allocate a worker to asynchronously
    send out the request.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10368
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
    
    ---------
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
