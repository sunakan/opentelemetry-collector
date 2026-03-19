commit 00f13433ef217cec0d62a33e6e2c49c6e7e9096e
Author: Curtis Robert <crobert@splunk.com>
Date:   Sun Jan 7 08:07:12 2024 -0800

    [chore][service/internal/proctelemetry] Remove flaky goleak test (#9231)
    
    **Description:** <Describe what has changed.>
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    Remove the goleak test from this package for now as it's flaky. This is
    reverting some of #9227, but leaving some added `Shutdown` calls.
    
    **Link to tracking Issue:** <Issue number if applicable>
    #9230: This issue will remain open to track debugging and re-enabling
    the test
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
