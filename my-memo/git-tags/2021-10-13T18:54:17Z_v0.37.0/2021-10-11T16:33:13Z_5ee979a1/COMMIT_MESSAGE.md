commit 5ee979a1bb0d0343e98913cbfb8bff92d43b8378
Author: Anthony Mirabella <a9@aneurysm9.com>
Date:   Mon Oct 11 12:33:13 2021 -0400

    Feature gate implementation and documentation (#4108)
    
    * Feature gate implementation and documentation
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Refactor feature gate implementation
    
    Moves the implementation from `config/configgates` to
    `service.featuregate`.
    
    Rearranges CLI flag handling so that it is all performed by a
    ParserProvider and the ConfigUnmarshaler does not need to know about CLI
    flags.
    
    Removes `Registry` type, collapsing `frozenRegistry` to `registry` and
    putting `Register()` and `Apply()` functions at the package scope.
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * rename FlagValue to gateFlagValue
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Add tests for feature gate parses provider
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Remove feature gate flag ParserProvider
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Refactor feature gates to use a global registry
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Rewrite feature gate README
    
    * Avoid copylock warnings
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Update service/featuregate/README.md
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
    
    * Update service/featuregate/README.md
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
    
    * Update service/featuregate/README.md
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
    
    * Address PR feedback
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
