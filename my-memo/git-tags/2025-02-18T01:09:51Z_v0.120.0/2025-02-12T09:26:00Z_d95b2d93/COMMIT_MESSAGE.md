commit d95b2d93fc8929e1365c57b69adb8b36deed0cff
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Feb 12 10:26:00 2025 +0100

    [confighttp] Add ToClientOption (#12354)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Adds `ToClientOption` option type to future-proof `ToClient` method. It
    has no current uses.
    
    Skipping the deprecation process per [this
    exception](https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/coding-guidelines.md#exceptions).
    
    #### Link to tracking issue
    Fixes #12353
