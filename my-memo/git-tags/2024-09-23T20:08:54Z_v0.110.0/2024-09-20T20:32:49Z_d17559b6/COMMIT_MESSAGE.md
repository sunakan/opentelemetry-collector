commit d17559b6e89a6f97b6800a6538bbf82430d94678
Author: Matthieu MOREL <matthieu.morel35@gmail.com>
Date:   Fri Sep 20 22:32:49 2024 +0200

    [chore]: remove testifylint from Makefile (#11236)
    
    #### Description
    
    All Testifylint rules are now fixed and ensured to be applied with
    golangci-lint.
    This removes the helper configuration in Makefile and tools module.
