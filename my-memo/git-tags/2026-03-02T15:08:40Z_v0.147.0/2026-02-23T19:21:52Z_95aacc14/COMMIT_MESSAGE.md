commit 95aacc14c36188f4dec34743a2b8e8982a6f4993
Author: Bogdan Stancu <stancu.bogdan.nicolae@gmail.com>
Date:   Mon Feb 23 21:21:52 2026 +0200

    [chore][exporter/nopexporter] Update README.md (#14623)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Update the example so the nop exporter is shown with an explicit empty
    config (`nop: {}`) instead of a bare `nop:` key.
    When the config is stored as a typed struct and re-serialized (e.g. by
    the OpenTelemetry operator), keys whose value is null are omitted from
    the output.
    <!--Describe the documentation added.-->
    #### Documentation
    Updated the readme
    
    ---------
    
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
