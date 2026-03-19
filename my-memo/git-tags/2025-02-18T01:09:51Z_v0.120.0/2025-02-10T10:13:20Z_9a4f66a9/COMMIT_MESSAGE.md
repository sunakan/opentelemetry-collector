commit 9a4f66a9544bc7af7924c0ca4406dd37e2353b15
Author: Chao Weng <19381524+sincejune@users.noreply.github.com>
Date:   Mon Feb 10 18:13:20 2025 +0800

    [chore] Update version of `component/componentattribute` to unblock upd… (#12326)
    
    …ate-otel in contrib
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    I was planning to run `update-otel` in contrib repo to test
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/37706
    before a new release. And found that it's blocked by the newly added
    `component/componentattribute` module in #12259
    
    This PR update its version to be latest dev to quickly unblock
    `update-otel` task.
    
    cc @bogdandrutu @codeboten @djaglowski @mx-psi
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    n/a
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    n/a
    
    <!--Describe the documentation added.-->
    #### Documentation
    n/a
    <!--Please delete paragraphs that you did not use before submitting.-->
