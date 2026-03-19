commit 74d02dadf4396b1aac6308f025d456f1b31c965e
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Wed Aug 20 05:21:27 2025 -0400

    [configoptional] Validate nested types (#13611)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    The fact that `Optional` is a config type with private fields means it
    needs to manually continue the `xconfmap.Validate` call chain using one
    of its private values, since the reflection calls in `xconfmap.Validate`
    can't manually introspect them (and arguably shouldn't).
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/13579
