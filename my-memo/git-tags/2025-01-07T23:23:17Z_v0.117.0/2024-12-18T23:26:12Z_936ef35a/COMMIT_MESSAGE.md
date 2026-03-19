commit 936ef35a88bea4acfd100dfbd34fd62127bef53a
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Wed Dec 18 15:26:12 2024 -0800

    [chore][exporterhelper] Fix feature gate setting for unit tests. (#11927)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Before fix: `defer setFeatureGateForTest(t,
    usePullingBasedExporterQueueBatcher, enableQueueBatcher)`
    This means run `setFeatureGateForTest` in the end.
    
    After fix: `defer setFeatureGateForTest(t,
    usePullingBasedExporterQueueBatcher, enableQueueBatcher)()`
    This means: run `setFeatureGateForTest` immediately but execute the
    function returned from `setFeatureGateForTest` in the end.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
