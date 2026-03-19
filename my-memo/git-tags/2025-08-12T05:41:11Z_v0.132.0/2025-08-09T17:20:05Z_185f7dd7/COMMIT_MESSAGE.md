commit 185f7dd74db7709abb42fca22c8659f8b6263d29
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Sat Aug 9 13:20:05 2025 -0400

    [componenttest] Remove `GetFactory` from nopHost (#13577)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    The `GetFactory` method was moved from `component.Host` to
    `hostcapabilities.ComponentFactory`. From what I can tell, this method
    is not used on the no-op host anywhere in core, and introduces an
    implicit loop in the dependency graph, so we should remove it before
    `componenttest` is made stable.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    Works toward
    https://github.com/open-telemetry/opentelemetry-collector/issues/13490
