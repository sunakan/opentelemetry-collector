commit 6258454d65ad518e14fa25f6025cd9cffd214937
Author: Paulo Dias <44772900+paulojmdias@users.noreply.github.com>
Date:   Mon Nov 17 16:17:27 2025 +0000

    [chore] enable modernize linter (#14153)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR enables the
    [modernize](https://golangci-lint.run/docs/linters/configuration/#modernize)
    linter.
    
    Example of a linter error:
    
    ```sh
    confmap/internal/decoder.go:171:59: reflecttypefor: reflect.TypeOf call can be simplified using TypeFor (modernize)
                    fieldNameSet := reflect.MakeMap(reflect.MapOf(to.Key(), reflect.TypeOf(true)))
    ```
    
    Signed-off-by: Paulo Dias <paulodias.gm@gmail.com>
