commit e375da45118c3b82edb6adf556c8ecbc765e7aa1
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Mon Aug 26 08:00:13 2024 -0600

    [confmap] Fix for unset env var setting non-string field. (#10950)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Still working on making a new test for this scenario, but all existing
    tests pass.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10949
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Manual testing showed the bug resolved, but I'd still like to get an e2e
    test to check it.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
