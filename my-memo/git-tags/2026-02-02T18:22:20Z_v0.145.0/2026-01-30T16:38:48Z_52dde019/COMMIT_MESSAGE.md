commit 52dde019491e89a13483be387ed0d37d49e4d3a9
Author: PrkBuilds <fandadep6@gmail.com>
Date:   Fri Jan 30 11:38:48 2026 -0500

    featuregate: add testable examples for registry usage (#14488)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    ## Description
    - Add doc-tested examples for feature gate registration and flag
    parsing.
    - Demonstrate gate enable/disable flow without touching the global
    registry.
    
    <!-- Issue number if applicable -->
    ## Link to tracking issue
    Fixes #13144
    
    <!--Describe what testing was performed and which tests were added.-->
    ## Testing
    ```
    cd featuregate/
    go test ./... -v
    ```
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
