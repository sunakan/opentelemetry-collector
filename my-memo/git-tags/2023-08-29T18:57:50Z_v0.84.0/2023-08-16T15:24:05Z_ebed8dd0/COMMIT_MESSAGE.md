commit ebed8dd0943a98447d7f0e265cf58ec197bff93a
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Wed Aug 16 11:24:05 2023 -0400

    [chore] Remove dependency references to koanf v1 (#8219)
    
    `github.com/knadh/koanf/maps` and other koanf packages can be
    ambiguously loaded from their own modules or from
    `github.com/knadh/koanf` v.1.x when using Go workspaces. This PR removes
    references to any koanf v1 packages to disambiguate the import path.
    
    **Link to tracking Issue:**
    https://github.com/open-telemetry/opentelemetry-collector/issues/8127
    
    I realize this change is enormous, I wasn't able to figure out how to
    isolate the change to just the koanf packages. Any recommendations
    welcome.
    
    I produced these changes by running the following:
    
    ```shell
    go mod edit -exclude=github.com/knadh/koanf@v1.5.0
    go work init
    go work use -r .
    go work sync
    make gotidy
    make genotelcorecol
    ```
