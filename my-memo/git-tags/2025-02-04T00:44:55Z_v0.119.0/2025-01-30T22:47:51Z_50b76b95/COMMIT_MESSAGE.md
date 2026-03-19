commit 50b76b95bf3578ce960bab664bf7809612da044c
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Thu Jan 30 17:47:51 2025 -0500

    [service] Return `telemetry.Config` validation errors (#12100)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Currently these are just printed, which hides validation issues with
    `telemetry.Config`. If we don't want to return these errors, we should
    document that and print them at a warning log level.
