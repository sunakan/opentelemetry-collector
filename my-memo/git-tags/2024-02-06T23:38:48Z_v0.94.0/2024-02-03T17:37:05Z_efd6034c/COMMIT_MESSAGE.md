commit efd6034cee19cb1d38b7c01aa3ec78d6ee71dc30
Author: Curtis Robert <crobert@splunk.com>
Date:   Sat Feb 3 09:37:05 2024 -0800

    [receiver/otlpreceiver] Enable goleak check (#9225)
    
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
