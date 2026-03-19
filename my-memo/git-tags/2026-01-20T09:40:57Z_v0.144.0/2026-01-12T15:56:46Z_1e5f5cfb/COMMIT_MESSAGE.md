commit 1e5f5cfbafbef1d0c99f0ef370b270da3ee535fb
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Mon Jan 12 07:56:46 2026 -0800

    [xextension] Add deprecated type alias support for extensions (#14405)
    
    Add support for deprecated component type aliases to extensions,
    following the implementation started in #14349
    
    The new `xextension.WithDeprecatedTypeAlias` factory option allows
    extension authors to register deprecated type aliases using:
    
      ```go
      xextension.NewFactory(
          newType,
          createDefaultConfig,
          createExtension,
          component.StabilityLevelAlpha,
          xextension.WithDeprecatedTypeAlias(oldType),
      )
