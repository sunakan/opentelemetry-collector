commit 13470870dbb6b4c52f853c72c9dd8393d1286a08
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Fri Jan 31 12:31:16 2025 -0500

    [chore] Remove manual calls to `Validate` (#12224)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Follow-up to
    https://github.com/open-telemetry/opentelemetry-collector/pull/12108.
    
    This calls `component.ValidateConfig` on `otelcol.Config`, which causes
    `Validate` to be recursively called on all eligible structs in the
    config.
    
    This has the following benefits:
    1. `Validate` will now automatically be called instead of config structs
    needing to call it on member structs.
    2. Paths to the exact key that caused a validation error in the config
    are now consistently printed.
    3. If there are multiple errors in the config, they are now all returned
    to the user instead of just the first error encountered.
