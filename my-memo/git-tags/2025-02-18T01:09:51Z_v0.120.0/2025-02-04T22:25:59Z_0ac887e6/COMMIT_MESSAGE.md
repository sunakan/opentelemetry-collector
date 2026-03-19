commit 0ac887e6b7377a064d36b36f6d145bf63c85289d
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Tue Feb 4 17:25:59 2025 -0500

    [xconfmap] Create module and add validation facilities (#12226)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Builds on
    https://github.com/open-telemetry/opentelemetry-collector/pull/12224 and
    starts the move of config validation from component to confmap. We can
    keep this in `xconfmap` while we determine whether to add the ability to
    validate using struct field tags.
    
    I think this has the following advantages:
    1. Everything configuration-related is now in confmap instead of split
    between confmap and component.
    2. We can share things like the mapstructure tag and config key
    separator as constants between unmarshaling and validation without
    creating dependencies between confmap and component.
    
    ~The one uncertainty this creates is what to do with `component.Config`,
    which would now be used as a thin alias for `any` without any meaningful
    usage in component.~
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/11524
