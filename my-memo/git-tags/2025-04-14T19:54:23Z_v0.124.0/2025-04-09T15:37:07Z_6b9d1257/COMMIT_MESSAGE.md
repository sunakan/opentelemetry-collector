commit 6b9d1257e26f5b275b61a824749bcc7e0bd0cd5b
Author: Sudipto Baral <sudiptobaral.me@gmail.com>
Date:   Wed Apr 9 11:37:07 2025 -0400

    Statically validate connector config during dry-run. (#12712)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    As described in
    [#8721](https://github.com/open-telemetry/opentelemetry-collector/issues/8721),
    the current `validate` command cannot capture improper connector usage
    errors during a dry run.
    
    One proposed solution _(as mentioned in [this
    comment](https://github.com/open-telemetry/opentelemetry-collector/issues/8721#issuecomment-1775393905))_
    is to surface configuration errors by instantiating the service during
    the dry run. However, reviewers preferred statically verifying the
    errors over instantiating the service (see the [PR #12488
    comments](https://github.com/open-telemetry/opentelemetry-collector/pull/12488)).
    
    The validation logic for connectors is located in the
    [`service/internal/graph`](https://github.com/open-telemetry/opentelemetry-collector/blob/1daa315455d02bac90185027878d858ba08a0f07/service/internal/graph)
    package. In the discussion of [PR
    #12681](https://github.com/open-telemetry/opentelemetry-collector/pull/12681),
    it was concluded that instantiating the graph is the better approach
    (see [this
    comment](https://github.com/open-telemetry/opentelemetry-collector/pull/12681#issuecomment-2746258749)).
    
    Finally, this PR uses the `graph.Build()` method to surface
    configuration errors during the dry run.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #8721 #12535
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Signed-off-by: sudipto baral <sudiptobaral.me@gmail.com>
