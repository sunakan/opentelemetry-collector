commit 6029f3176705fdc0cb63849b73bafbc6bc9214fb
Author: Braydon Kains <93549768+braydonk@users.noreply.github.com>
Date:   Mon Sep 16 05:36:51 2024 -0400

    otelcol: fix windows event log core placement (#11051)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    In the CollectorSettings LoggingOptions, when the options are
    `zap.WrapCore`, the final core wrapped will end up running first. For
    this reason, the windowsEventLogCore must be the first option in the
    list of user supplied options, to ensure user supplied options are run
    before the core that writes to the Windows Event Log.
    
    Prior art: I fixed this before in #5298.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    #5297
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Testing was manual by running the Collector as a service after this
    change. I tried to add a unit test but could not find an effective way
    to do that due to all the type indirection done by the `zap` package. I
    was hoping to find an easy way to tell that the `windowsEventLogCore` is
    the first core wrapped in the options but I could not find a way to pull
    that off. Open to ideas if anyone can find a way.
