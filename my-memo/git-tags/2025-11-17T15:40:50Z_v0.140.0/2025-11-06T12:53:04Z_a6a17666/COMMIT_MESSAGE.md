commit a6a176660925fd2826ba83d64910f05a2e365235
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Nov 6 12:53:04 2025 +0000

    [chore] Remove toolchain directive from cmd/otelcorecol (#14137)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    This is not really needed anymore in recent Go versions, so I think we
    can remove it and avoid CI failures on every patch.
    
    In particular, [the Go 1.25 release notes](https://go.dev/doc/go1.25)
    state:
    
    > When the go command updates the go line in a go.mod or go.work file,
    it [no longer](https://go.dev/ref/mod#go-mod-file-toolchain) adds a
    toolchain line specifying the command’s current version.
