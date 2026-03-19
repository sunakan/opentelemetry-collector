commit d3c5ce06e79dada28a63a8f2a6d2d41237947b89
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Jun 6 14:36:37 2024 +0000

    [chore] Clarify that cmd/otelcorecol and top-level go.mod are not the source of the core distro (#10351)
    
    #### Description
    
    Documents the purpose of `cmd/otelcorecol` in a new README and in a
    comment on the builder manifest. Adds note to top-level go.mod.
    
    This is a common point of confusion and was recently confusing for users
    on the aftermath of CVE-2024-36129
    
    Counterpart to open-telemetry/opentelemetry-collector-contrib/pull/33409
    
    ---------
    
    Co-authored-by: Armin Ruech <7052238+arminru@users.noreply.github.com>
