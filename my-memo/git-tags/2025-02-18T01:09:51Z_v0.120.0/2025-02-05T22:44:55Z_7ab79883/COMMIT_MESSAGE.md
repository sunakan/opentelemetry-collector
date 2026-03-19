commit 7ab79883c69c5b45e7914439ecad439332774f7f
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Wed Feb 5 17:44:55 2025 -0500

    [confignet] Add `omitempty` tags to fields (#12302)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Adds `omitempty` to all struct fields that are not set with any of the
    `NewDefault[...]` functions. If we like the approach here, I'll open PRs
    for other config modules.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    Works toward
    https://github.com/open-telemetry/opentelemetry-collector/issues/12191
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    I added tests to check that this works when structs are marshaled with
    confmap in a separate module so as not to create a direct dependency on
    confmap within confignet.
