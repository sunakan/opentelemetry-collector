commit 6227646b0146bc09c4771298101c1362e0be61bd
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Jul 12 10:15:20 2024 +0200

    Promote confmap.strictlyTypedInput feature gate to beta (#10554)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Makes type resolution strict and conforming to the behavior described in
    [the env vars
    RFC](https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/rfcs/env-vars.md)
    
    Depends on:
    
    - #10553
    - #10555
    - #10559
    - open-telemetry/opentelemetry-collector-contrib/pull/33950
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #9532, Fixes #8565
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
