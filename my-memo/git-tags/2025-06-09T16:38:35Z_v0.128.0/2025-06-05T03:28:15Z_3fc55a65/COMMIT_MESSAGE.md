commit 3fc55a65fb7d6827a75cba15628f835ed070d1af
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Wed Jun 4 20:28:15 2025 -0700

    [exporter][batcher] Multi-batch support - Version 2 (#12760)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR introduces two new components
    * `Partitioner` - an interface for fetching batch key. A partitioner
    type should implement the function `GetKey()` which returns the batching
    key. `Partitioner` should be provided to the `queue_bacher` along with
    `sizer` in `queue_batch::Settings`.
    * `multi_batcher`. It supports key-based batching by routing the
    requests to a corresponding `shard_batcher`. Each `shard_batcher`
    corresponds to a shard described in
    https://github.com/open-telemetry/opentelemetry-collector/issues/12473.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    https://github.com/open-telemetry/opentelemetry-collector/issues/12795
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Dmitry Anoshin <anoshindx@gmail.com>
