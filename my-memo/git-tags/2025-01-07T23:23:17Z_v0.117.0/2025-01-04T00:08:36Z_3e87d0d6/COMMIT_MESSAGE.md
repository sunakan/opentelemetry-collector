commit 3e87d0d6f32863e39bcfea620772579ac993e32d
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Fri Jan 3 16:08:36 2025 -0800

    [chore] Fix bug in exporter.Request.MergeSplit() (#12009)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR fixes `logsRequest`, `tracesRequest` and `metricsRequest` to NOT
    modify the input if `MergeSplit()` returns an error. Copy-pasted the doc
    string of `MergeSplit()` for references:
    
    
    // MergeSplit is a function that merge and/or splits this request with
    another one into multiple requests based on the
    // configured limit provided in MaxSizeConfig.
    // All the returned requests MUST have a number of items that does not
    exceed the maximum number of items.
    // Size of the last returned request MUST be less or equal than the size
    of any other returned request.
    // **The original request MUST not be mutated if error is returned after
    mutation** or if the exporter is
    // marked as not mutable. The length of the returned slice MUST not be
    0.
    // Experimental: This API is at the early stage of development and may
    change without backward compatibility
    // until
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122 is
    resolved.
    MergeSplit(context.Context, exporterbatcher.MaxSizeConfig, Request)
    ([]Request, error)
    
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Added `TestMergeSplit{Logs, Traces,
    Metrics}InputNotModifiedIfErrorReturned`
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
