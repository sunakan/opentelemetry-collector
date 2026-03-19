commit 43965056e80874d7a7ec982298a012aa210bb90e
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon Jun 2 09:50:58 2025 +0200

    [confighttp] Remove pointer in CookiesConfig field (#13116)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Removes pointer to `CookiesConfig` field. Since the struct already has
    an `enabled` field, it is unnecessary for it to be a pointer.
    
    This is a breaking change, contrib tests show that it does not affect
    any contrib component, and it would be hard to do in two steps.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Updates #9478
