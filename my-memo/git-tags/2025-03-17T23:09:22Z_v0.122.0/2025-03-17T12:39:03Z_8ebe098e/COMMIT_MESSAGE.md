commit 8ebe098ef72fbda15a025831fc47af32ec62236e
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Mon Mar 17 08:39:03 2025 -0400

    [service] Allow running the Collector without any pipelines (#12613)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Adds a feature gate that allows starting the Collector without running
    any pipelines. This will mainly be used for OpAMP, where the Collector
    may need to be started with only extensions
