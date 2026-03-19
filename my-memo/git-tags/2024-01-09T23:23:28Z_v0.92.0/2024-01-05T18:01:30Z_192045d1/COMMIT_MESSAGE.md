commit 192045d1166cb30a2783952e2dc3fe0ded27f807
Author: Curtis Robert <crobert@splunk.com>
Date:   Fri Jan 5 10:01:30 2024 -0800

    [chore][internal/e2e] Enable goleak check (#9223)
    
    **Description:** <Describe what has changed.>
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    Leaking goroutines were detected that were caused by a dependency that
    we can ignore (`go.opencensus.io/stats/view.(*worker).start`), as well
    as a missing server close call.
    
    **Link to tracking Issue:** <Issue number if applicable>
    #9165
    
    **Testing:** <Describe what testing was performed and which tests were
    added.>
    Added check is passing as well as existing tests.
