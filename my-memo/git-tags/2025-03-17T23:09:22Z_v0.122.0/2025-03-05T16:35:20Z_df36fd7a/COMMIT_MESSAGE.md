commit df36fd7a0660dce0e53cfdc781dc4ee7c95e4301
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Mar 5 17:35:20 2025 +0100

    [chore] Simplify release doc (#12563)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Simplifies description of automated release steps. While there is some
    value in having the description of the automated steps somewhere, I
    think this runs the risk of getting outdated and us having to look at
    the code directly, so I would rather just remove it from here and
    improve the comments/code of the automation over time. See
    open-telemetry/opentelemetry-collector-releases/pull/856 for one
    improvement of this kind.
