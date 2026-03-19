commit fdd6650ab842fcc31c866ccb6850e80d7e30839f
Author: Curtis Robert <crobert@splunk.com>
Date:   Fri Jan 5 09:56:34 2024 -0800

    [chore][exporter/exporterhelper] Enable goleak test (#9215)
    
    **Description:** <Describe what has changed.>
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    This enables `goleak` to run on tests within `exporter/exporterhelper`.
    A known leak needs to be ignored, and we need to explicitly call
    shutdown on the queue to make sure no routines are still running after
    the test is complete.
    
    **Link to tracking Issue:** <Issue number if applicable>
    #9165
    
    **Testing:** <Describe what testing was performed and which tests were
    added.>
    Goleak is now passing, all existing tests are passing.
