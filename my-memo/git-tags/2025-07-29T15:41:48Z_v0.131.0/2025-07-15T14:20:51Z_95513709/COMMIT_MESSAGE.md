commit 95513709ce58dbabbfc7cd85625e2e3091b4a701
Author: John L. Peterson (Jack) <john.peterson@datadoghq.com>
Date:   Tue Jul 15 10:20:51 2025 -0400

    [chore] convert configgrpc.KeepaliveServerConfig.ServerParameters and… (#13364)
    
    … EnforcementPolicy to configoptional
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    converts `configgrpc.KeepaliveServerConfig.ServerParameters` and
    `configgrpc.KeepaliveServerConfig.EnforcementPolicy` from pointers to
    `configoptional` type
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #13250 and follow-up to missed code in #13252
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    existing unit/ci tests
    <!--Describe the documentation added.-->
    #### Documentation
    update chloggen from #13252
    <!--Please delete paragraphs that you did not use before submitting.-->
