commit a9bca17f1a4cf4c5a33afea4f9e3803bd8712337
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Mon Mar 3 05:20:58 2025 -0500

    [confighttp] Add `omitempty` tag to fields (#12482)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Depends on
    https://github.com/open-telemetry/opentelemetry-collector/pull/12481.
    
    Note that I didn't add the tag to any fields where we set a default
    value. This is because the zero value is significant in these cases and
    omitting it from the output would cause it to be set to the default
    instead of the zero value. We could fix this with a custom interface
    implemented by our config structs, but that will have to be a separate
    effort, and simply using the `omitempty` tag is still an improvement for
    most fields.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    Works toward
    https://github.com/open-telemetry/opentelemetry-collector/issues/12191
