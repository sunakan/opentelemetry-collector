commit 53be17e5916c118643ca704e19c7dfc02ec06a3f
Author: Théo de Magalhaes <theo.demagalhaes@datadoghq.com>
Date:   Mon Feb 9 11:14:28 2026 +0100

    Add new experimental toStringMapRaw method to xconfmap (#14480)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    This experimental method allows for stringmap manipulations without
    destroying internal types like `ExpandedValue`.
    Destroying these internal values could lead to unrecoverable errors like
    having an env var fully numeric but expected as string. Using
    `ToStringMap` would permanently flatten the `ExpandedValue` into its
    `Value` type regardless of intent.
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Added tests.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
