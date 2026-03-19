commit af92ca87d82026e700c29eea922f23e3a8aff2dc
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Jul 31 10:42:04 2024 +0200

    [chore] Explicitly note that service and otelcol are not part of 1.0 (#10643)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Explicitly excludes service and otelcol from 1.0 efforts.
    
    These modules are useful for distribution maintainers but not end-users,
    for which the 1.0 effort is targeted.
