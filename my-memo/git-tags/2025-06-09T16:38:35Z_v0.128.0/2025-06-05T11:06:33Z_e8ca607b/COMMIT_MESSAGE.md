commit e8ca607b7989ce8eabf555720daa92cc56a71fac
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Jun 5 11:06:33 2025 +0000

    [receiver/otlpreceiver] Use configoptional type (#13119)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Uses `configoptional.Optional` for fields in `protocols` section.
    
    Removes `Unmarshal` method since it is no longer needed.
    
    These are both breaking changes, I think it would be a bit difficult to
    do this in two steps, I am happy to work on fixing contrib after this is
    merged.
    
    #### Link to tracking issue
    Fixes #12980
