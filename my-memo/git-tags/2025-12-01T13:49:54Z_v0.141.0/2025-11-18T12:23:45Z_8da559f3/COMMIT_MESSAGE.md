commit 8da559f355336058a80c40704567962054f5a309
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Nov 18 12:23:45 2025 +0000

    [confighttp] Use configoptional.Optional for CookiesConfig (#14154)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Uses `configoptional.Optional` for `confighttp.ClientConfig.Cookies`
    field.
    
    This should be transparent for end users iff they have the
    `configoptional.AddEnabledField` feature gate enabled (the default)
    
    #### Link to tracking issue
    Updates #14021
