commit 6a98ee8b14a270e7cf8e0fb0cca547053046976c
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Feb 27 14:47:58 2025 +0100

    [chore][extensionauth] Return error on NewClient and NewServer constructors (#12511)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Adds errors in return type to `extensionauth.New*` functions. This is
    not a breaking change since `extensionauth` is an unreleased module.
