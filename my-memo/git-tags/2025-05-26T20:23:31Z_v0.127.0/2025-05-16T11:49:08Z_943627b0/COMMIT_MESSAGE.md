commit 943627b0fe7273639c860a50a0bbac49021c0b01
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri May 16 13:49:08 2025 +0200

    [chore] Clarify that Unmarshaler only supports structs (#13045)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Clarifies usage of `confmap.Unmarshaler`. This is a limitation that
    currently exists since mapstructure will fail to map between the types.
