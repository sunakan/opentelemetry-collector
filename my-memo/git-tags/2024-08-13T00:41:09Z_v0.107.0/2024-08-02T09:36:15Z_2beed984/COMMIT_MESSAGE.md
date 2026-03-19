commit 2beed98471f066a50da6d5f6952122fa1f067638
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Aug 2 11:36:15 2024 +0200

    [confmap] Validate providers scheme when building a Resolver (#10786)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Validate providers schemes when building a Resolver.
    
    I don't consider this a breaking change since the providers would be
    useless if they don't follow this pattern.
