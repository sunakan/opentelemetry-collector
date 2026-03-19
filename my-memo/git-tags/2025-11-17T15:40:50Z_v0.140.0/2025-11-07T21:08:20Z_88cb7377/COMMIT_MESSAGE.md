commit 88cb7377c57fbac613aededdde70486010912574
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Nov 7 21:08:20 2025 +0000

    [configoptional] Mark 'configoptional.AddEnabledField' as beta (#14136)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Marks `configoptional.AddEnabledField` as beta. I have verified that it
    would work correctly for cookies configuration and made a PoC for
    keepalives (I will push a PR for it after this PR has been merged).
    
    I spent some time updating
    open-telemetry/opentelemetry-specification/issues/4344 and filed
    open-telemetry/opentelemetry-specification/pull/4723 as a way to
    explicitly state that the guidance only applies to environment
    variables. The issue remains unresolved, but given the current usages of
    `enabled` (see
    https://github.com/open-telemetry/opentelemetry-specification/issues/4344#issuecomment-3421326691)
    I don't see a reason to not go forward with this.
    
    #### Link to tracking issue
    Updates #14021
