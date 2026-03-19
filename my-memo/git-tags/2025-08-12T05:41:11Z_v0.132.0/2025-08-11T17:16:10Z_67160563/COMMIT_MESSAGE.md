commit 671605632189c077c3532e7b3dcf7fd9ae0fe61a
Author: Antoine Toulme <atoulme@splunk.com>
Date:   Mon Aug 11 10:16:10 2025 -0700

    [memorylimiter] do not throw an error when asked to shutdown out of order (#13599)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Memory limiter extension and processor shutdown don't throw an error if
    the component was not started first.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #9687
