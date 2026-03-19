commit df1ff4747255c667fd97703a1eefa4b6b39ec00d
Author: Curtis Robert <crobert@splunk.com>
Date:   Fri Jan 5 09:55:14 2024 -0800

    [chore][service/internal/proctelemetry] Enable goleak check (#9227)
    
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
