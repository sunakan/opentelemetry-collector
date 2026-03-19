commit 0ad18e507bf1eb236844998de7baa06fb5460332
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Nov 26 09:34:18 2025 +0000

    [configoptional] Fix behavior when unmarshaling with 'enabled: false' (#14218)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Updates `configoptional.Optional.Unmarshal` to set the inner value to
    the zero value when the resulting value is a `configoptional.None`.
