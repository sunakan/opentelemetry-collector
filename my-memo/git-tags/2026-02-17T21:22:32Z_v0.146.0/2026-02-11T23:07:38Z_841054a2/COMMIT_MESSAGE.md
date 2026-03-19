commit 841054a296aca82ff75655ee04397b99f8db7594
Author: ShaanveerS <146979751+ShaanveerS@users.noreply.github.com>
Date:   Thu Feb 12 00:07:38 2026 +0100

    [mdatagen] Reset aggDataPoints during metric init (#14569)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    This pr fixes an error in `mdatagen` code when reaggregation is enabled.
    `aggDataPoints` was accumulating across emit cycles and was not reset in
    `init()`. After enough cycles, `emit()` could read counters that no
    longer matched the current datapoints slice and panic with index out of
    range.
    
    This change updates `metrics.go.tmpl` so generated metrics reset
    `aggDataPoints` in `init()`.
    context:
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/46008#issuecomment-3884226426
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Part of
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/46008
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Added a regression test covering repeated emit cycles to verify if
    `aggDataPoints` is reset
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    Signed-off-by: Shaanveer Singh <shaanver.singh@gmail.com>
    Co-authored-by: Dmitry Anoshin <anoshindx@gmail.com>
