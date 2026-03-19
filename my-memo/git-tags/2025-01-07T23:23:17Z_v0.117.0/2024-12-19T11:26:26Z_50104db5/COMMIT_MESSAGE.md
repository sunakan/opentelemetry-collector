commit 50104db5f3b7988a5be63092f62f967f0694729e
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Dec 19 12:26:26 2024 +0100

    [chore][docs/component-stability.md] Add a 'Moving between stability levels' section (#11937)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Split off from #11864, describes how the graduation would work without
    any additional criteria.
    
    Rendered diagram:
    
    
    ```mermaid
    stateDiagram-v2
        state Maintained {
        InDevelopment --> Alpha
        Alpha --> Beta
        Beta --> Stable
        }
        InDevelopment: In Development
        Maintained --> Unmaintained
        Unmaintained --> Maintained
        Maintained --> Deprecated
        Deprecated --> Maintained: (should be rare)
    ```
    
    ---------
    
    Co-authored-by: Christos Markou <chrismarkou92@gmail.com>
