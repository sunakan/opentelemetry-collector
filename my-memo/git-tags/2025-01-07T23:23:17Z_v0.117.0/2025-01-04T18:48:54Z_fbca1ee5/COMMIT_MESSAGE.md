commit fbca1ee5484e855d766e0a20e3935f2b3b1ffaaa
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Sat Jan 4 10:48:54 2025 -0800

    [chore] Deprecate the interface exporter.Request.Merge() (#12012)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR removes the interface `exporter.Request.Merge()` because
    `Merge()` is just a special case of `MergeSplit()`.
    With just one interface, we no longer need an if-else loop in the
    batcher based on MaxConfigSize. `MergeSplit()` should be able to handle
    both the case where MaxConfigSize is specified or the case where it is
    not
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    All the existing cases should still pass.
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
