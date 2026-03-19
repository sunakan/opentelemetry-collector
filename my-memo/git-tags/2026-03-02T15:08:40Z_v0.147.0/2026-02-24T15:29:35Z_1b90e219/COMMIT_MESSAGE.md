commit 1b90e219ff3242595b96e31280c2ea825dc34631
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Tue Feb 24 10:29:35 2026 -0500

    [chore] Add missing chloggen component types (#14626)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    A lot of our modules are missing `metadata.yaml` files, which are [used
    by
    githubgen](https://github.com/open-telemetry/opentelemetry-go-build-tools/blob/97f351f03d4bf8d88776e256c381135326994b4d/githubgen/main.go#L103)
    to determine which modules are available to be put in the list of
    components eligible for a changelog entry.
    
    There were also two `extension/xextension` entries that were in my
    opinion misclassified packages, so I fixed those as well.
