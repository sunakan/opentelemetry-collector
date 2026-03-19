commit 7059878252cdcd2c10cf356833ab5ff53343d4f7
Author: Anthony Mirabella <a9@aneurysm9.com>
Date:   Tue Nov 23 12:08:13 2021 -0800

    Feature gate CLI flag and visibility changes (#4368)
    
    * Expose feature gate registry type and its methods
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Add CLI flags for feature gates
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Add accessor for global feature gate registry
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * add canonical import comment
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Revert "Add accessor for global feature gate registry"
    
    This reverts commit 23c957c166d300ecb0ae546e82cae4aeffb36728.
    
    * Revert "Expose feature gate registry type and its methods"
    
    This reverts commit df64ad23588b28b096ded999a39d3198d4cf49a6.
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Add CHANGELOG entry, update docblock for Flags()
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
