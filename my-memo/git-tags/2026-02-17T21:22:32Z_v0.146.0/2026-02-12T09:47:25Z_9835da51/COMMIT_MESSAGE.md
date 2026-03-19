commit 9835da510b447436100a55563f95056ebd89f134
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Feb 12 09:47:25 2026 +0000

    [chore][docs] Add reference to //go:fix inline directive (#14568)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Adds reference to new `inline` directive available in Go 1.26. The
    canonical example from [the
    documentation](https://pkg.go.dev/golang.org/x/tools/go/analysis/passes/inline#hdr-Analyzer_inline)
    is:
    
    ```go
    // Deprecated: prefer Pow(x, 2).
    //go:fix inline
    func Square(x int) int { return Pow(x, 2) }
    ```
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
