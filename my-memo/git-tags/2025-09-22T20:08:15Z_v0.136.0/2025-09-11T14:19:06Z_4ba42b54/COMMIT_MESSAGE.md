commit 4ba42b547f7d3ddb1dbecc723c229c7054c60f88
Author: Paulo Dias <44772900+paulojmdias@users.noreply.github.com>
Date:   Thu Sep 11 15:19:06 2025 +0100

    [internal/tools] Add support for modernize in Makefile (#13800)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Added a new modernize make target to run the Go
    [modernize](https://pkg.go.dev/golang.org/x/tools/gopls/internal/analysis/modernize)
    tool. This isn’t part of CI, users need to run it manually when they
    want to apply modern Go patterns.
    
    Same as
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/42542
    
    ---------
    
    Signed-off-by: Paulo Dias <paulodias.gm@gmail.com>
