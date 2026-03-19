commit c0b49d48748f7218f43ca53b89c5d6749162b1de
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Mon Aug 11 13:00:01 2025 -0700

    [exporterhelper][queuebatcher] Context value propagation during batching - approach #2 (#13460)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR provides a solution to propagate context values across batching.
    This is particularly useful in scenarios where context carries important
    metadata—such as authentication tokens.
    
    **New API**
    
    A new API has been added to support this functionality:
    ```
    mergeCtx func(ctx1 context.Context, ctx2 context.Context) context.Context
    ```
    
    By supplying a custom mergeCtx function, users can control how context
    values are preserved or combined—for example, by selectively copying
    specific keys, merging metadata, or keeping the larger value.
    
    Note: `context.Context` returned from the above function should not
    override `Value()` function.
    
    **Default Behavior**
    If mergeCtx is not provided (i.e., left as nil), the batching system
    defaults to a conservative behavior: no context values are retained from
    the original incoming contexts. Users who need context propagation must
    explicitly opt in by defining and supplying a mergeCtx function.
    
    
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/issues/13320
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    * `batch_context_test.go` checks the `mergeCtx` does not interfere with
    span link
    * `partition_batcher_test.go` checks `mergeCtx=nil` works properly
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
