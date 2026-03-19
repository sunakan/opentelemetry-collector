commit 605011a1fea8eb053c65942d3b80766bf16ec304
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Jun 3 10:51:41 2025 +0000

    [confighttp,configgrpc] Rename TLSSetting to TLS (#13115)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Renames `TLSSetting` fields to `TLS`. The name is a historical artifact
    since the `configtls` had `Setting` in the name before. This is more
    consistent with the rest.
    
    I think if we do this change we should do it alongside other changes to
    confighttp, to avoid breaking our users multiple times.
