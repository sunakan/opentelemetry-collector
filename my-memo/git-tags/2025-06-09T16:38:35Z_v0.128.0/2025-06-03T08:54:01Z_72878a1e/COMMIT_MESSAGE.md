commit 72878a1e9786482a045c32969d14f7ad581726a9
Author: Antoine Toulme <atoulme@splunk.com>
Date:   Tue Jun 3 01:54:01 2025 -0700

    [confmap] fix panic when assigning nil maps (#13118)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Do not panic on assigning nil maps to non-nil maps
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #13117
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    unit tests
    
    ---------
    
    Co-authored-by: github-actions[bot] <github-actions[bot]@users.noreply.github.com>
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
