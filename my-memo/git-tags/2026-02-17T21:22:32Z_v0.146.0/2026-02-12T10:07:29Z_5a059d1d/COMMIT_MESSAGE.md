commit 5a059d1d67181003515cd8806e1575d81b924e68
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Thu Feb 12 05:07:29 2026 -0500

    [cmd/builder] Allow configuring telemetry providers (#14575)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Allows configuring a custom telemetry provider module, whose factory
    will set in the `otelcol.Factories` field.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    Assists with
    https://github.com/open-telemetry/opentelemetry-collector/issues/14542.
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    I added basic tests to confirm the functionality of the field and did
    some manual testing on a Collector compiled to a Wasm binary to confirm
    that a no-op telemetry provider cuts down on space.
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    Added to the docs and made some slight touchups. The docs could use some
    work, but that should be addressed separately.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
