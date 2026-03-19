commit 1832173e9d2601564276dd91b37199af072a1275
Author: Hyunuk Lim <hyunuk@amazon.com>
Date:   Tue Sep 21 06:39:06 2021 -0700

    Move configcheck.ValidateConfigFromFactories to service package (#4055)
    
    * Move Validateconfig to configtest
    
    * Rename ValidateConfig to CheckConfigStruct
    
    * fix: revert all the renamed variables
    
    * fix: move configcheck to service package
    
    * fix: rename ValidateConfig to CheckConfigStruct
    
    * fix: rename test names
    
    * chore: add to CHANGELOG
    
    * fix: solve merge conflict
    
    Co-authored-by: alex <alexperez52@gmail.com>
    Co-authored-by: Anthony Mirabella <a9@aneurysm9.com>
