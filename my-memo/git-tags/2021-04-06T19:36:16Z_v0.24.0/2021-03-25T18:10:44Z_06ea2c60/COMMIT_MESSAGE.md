commit 06ea2c60b8b7dd2231a40f9bb4b285ba3e8a7b3c
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Mar 25 19:10:44 2021 +0100

    Create configload.Parser struct to abstract away from Viper (#2728)
    
    * Make ConfigUnmarshaler use `map[string]interface{}`
    
    * Remove viper references on comments
    
    * Encapsulate in `Loader` struct
    
    This commit also moves the `ConfigUnmarshaler` and `CustomUnmarshaler` types
    into the config package, since otherwise an import cycle would happen.
    
    * Missing `config.NewLoader()`
    
    * Move `Loader` to `configload` package
    
    The `config` package indirectly depends on `exporterhelper`, so
    `Loader` can't be on it.
    
    * Empty commit to retrigger Github
    
    For some reason my commit is not showing up on the PR
    
    * Fix merge commit
    
    * More merge fixes
    
    * Address review comments
    
    - s/instanceg/instance
    - Add period at end of doc comments
    - Reword NewViper comment
    - Rename ViperDelimiter to KeyDelimiter
    
    * Rename from Loader to Parser
    
    * Add tests for `ToStringMap` and bring back old implementation
    
    * Revert changes on component/component.go and related changes
    
    This commit was done by running
    
    git diff origin/main component/component.go exporter/ extension/ \
    internal/testcomponents/example_exporter.go processor/ receiver/ | git apply -R
    
    * Manual fixes after reverting component files
    
    * s/componentViperSection/componentSection/
