commit 5309d60a167b7e86e346f8abb845e2cb68c5ed35
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Fri Jun 28 01:33:11 2024 -0700

    [otelcol] Remove all default providers/converters (#10436)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Removed deprecated `NewCommand`. Deprecates `NewCommandMustSetProvider`.
    Adds `NewCommand` that requires at least one provider be set.
    
    Removes usage of imported providers/converters from otelcol (but they
    still live in otelcoltest until
    https://github.com/open-telemetry/opentelemetry-collector/pull/10417 is
    merged.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10290.
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Unit tests
