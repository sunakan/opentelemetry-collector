commit fbfbe04fbd2a44159070f8c8d20d53a3f30d6e75
Author: Curtis Robert <crobert@splunk.com>
Date:   Tue Jan 9 12:23:37 2024 -0800

    [chore][processor/batchprocessor] Enable goleak check (#9224)
    
    **Description:** <Describe what has changed.>
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    Add `goleak` to detect leaks in tests. Leaking goroutines were detected
    that were caused by a dependency that we can ignore
    (`go.opencensus.io/stats/view.(*worker).start`), some `Shutdown` calls
    were also added that were missing.
    
    **Link to tracking Issue:** <Issue number if applicable>
    #9165
    
    **Testing:** <Describe what testing was performed and which tests were
    added.>
    Added check is passing as well as existing tests.
