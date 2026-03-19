commit 5cdf27c0663dafceeb0a1712b71ebaa339be44ae
Author: Curtis Robert <crobert@splunk.com>
Date:   Fri Jan 5 09:55:59 2024 -0800

    [chore][receiver/scraperhelper] Enable goleak check (#9226)
    
    **Description:** <Describe what has changed.>
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    Add `goleak` to detect leaks in tests. Leaking goroutines were detected
    that were caused by a dependency that we can ignore
    (`go.opencensus.io/stats/view.(*worker).start`), a `Shutdown` call was
    also added that was missing.
    
    **Link to tracking Issue:** <Issue number if applicable>
    #9165
    
    **Testing:** <Describe what testing was performed and which tests were
    added.>
    Added check is passing as well as existing tests.
