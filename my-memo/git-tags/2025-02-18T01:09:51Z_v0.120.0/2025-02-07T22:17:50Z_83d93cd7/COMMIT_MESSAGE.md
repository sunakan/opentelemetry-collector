commit 83d93cd7cf86b00ef6783365c127ebe4b33f06af
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Fri Feb 7 17:17:50 2025 -0500

    [configgrpc] Add `omitempty` tag to fields (#12322)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    I didn't add the tag to any fields that have defaults set, since setting
    these values to Go's zero value for that type would be a meaningful
    configuration option that should appear in the config.
    
    I think we could consider updates to the marshaler in the future to make
    it possible to omit fields that have values matching the ones produced
    by the `NewDefault[...]` functions, but that will be a more involved
    effort we can tackle later.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    Works toward
    https://github.com/open-telemetry/opentelemetry-collector/issues/12191
