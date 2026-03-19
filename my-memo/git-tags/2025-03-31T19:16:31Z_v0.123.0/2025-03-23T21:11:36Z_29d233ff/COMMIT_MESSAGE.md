commit 29d233ff1cfad0b627d09cd3d9d4212673cdc2d3
Author: Chao Weng <19381524+sincejune@users.noreply.github.com>
Date:   Mon Mar 24 05:11:36 2025 +0800

    [chore] Fix ARM unit test (#12639)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    This PR fixes a test in ARM by using a shorter file name in socket
    (rolling back the behavior introduced in #12576 ). Seems that we ran
    into an issue similar to https://github.com/golang/go/issues/6895
    
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
