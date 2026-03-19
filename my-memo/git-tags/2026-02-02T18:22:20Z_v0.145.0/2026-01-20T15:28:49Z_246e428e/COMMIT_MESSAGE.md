commit 246e428e97978c1ff92583335cd33a0a18323a9f
Author: Théo de Magalhaes <theodemagalhaes@icloud.com>
Date:   Tue Jan 20 16:28:49 2026 +0100

    Fix ExpandedValue sanitization on struct collection (#14413)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    `useExpandedValue` would resolve ExpandedValues after checking if a
    collection's type was "stringy." For collections of structs, `isStringy`
    always returns false, causing all ExpandedValues to be sanitized to
    their parsed values and breaking decoding of string fields if the parsed
    value was not `string`.
    
    Now, `useExpandedValue` checks if it's dealing with a collection of
    structs; in which case, skip sanitization and rely on mapstructure's
    per-field decoding.
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Added tests relying on `configopaque.MapList` which is an alias on the
    struct collection `[]Pair`
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
