commit b77b1d2580eca1073ff560b7a8db7268ab69a12b
Author: Curtis Robert <crobert@splunk.com>
Date:   Fri Jan 5 10:13:01 2024 -0800

    [chore][exporter/otlphttpexporter] Enable goleak check (#9222)
    
    **Description:** <Describe what has changed.>
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    Enables goleak checks against all tests for the otlphttpexporter. This
    is the exact same change done in #9210 I just missed it in that change.
    
    **Link to tracking Issue:** <Issue number if applicable>
    #9165
    
    **Testing:** <Describe what testing was performed and which tests were
    added.>
    All tests are passing.
