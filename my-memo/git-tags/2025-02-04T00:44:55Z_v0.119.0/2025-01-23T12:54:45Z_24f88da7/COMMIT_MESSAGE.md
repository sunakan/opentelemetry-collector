commit 24f88da7b5839422fb15d9310a5a85b8a51b14f3
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Thu Jan 23 07:54:45 2025 -0500

    [component] Allow calling `component.ValidateConfig` at the top level (#12102)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Updates `component.ValidateConfig` to recurse through the entire config
    object by checking for `ConfigValidator` implementations of structs that
    are under interfaces. Right now `ValidateConfig` stops at things like
    `component.Config` which themselves can't implement
    `component.ValidateConfig` because `callValidateIfPossible` can only see
    the interface and not the concrete type before this change.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Replaces
    https://github.com/open-telemetry/opentelemetry-collector/pull/12058.
    
    Works toward
    https://github.com/open-telemetry/opentelemetry-collector/issues/11524.
    
    Co-authored-by: Evan Bradley <evan-bradley@users.noreply.github.com>
