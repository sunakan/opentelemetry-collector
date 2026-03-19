commit 71f7d9e1947840ce62fea1c6b07b72d48cd51360
Author: Gergely Madarász <gergely.madarasz@tulip.co>
Date:   Fri Dec 6 16:45:27 2024 +0100

    Remove memory leak at exporter shutdown (#11745)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Fix memory leak at exporter shutdown. At startup time the exporter
    creates metric callbacks that hold references to the exporter queue,
    these need to be unregistered at shutdown.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #11401
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
