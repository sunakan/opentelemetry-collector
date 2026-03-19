commit 244ea4dd3cd645f18c2b0a09d0326ab0a20ea51b
Author: jjackson-s <85652476+jjackson-s@users.noreply.github.com>
Date:   Thu Aug 19 17:17:29 2021 -0700

    update DirResolver to find external packages (#3739)
    
    * update DirResolver to find external packages
    
    * refactored code
    
    * updated grepMod() and error checking
    
    * updated grepMod
    
    * updated grepMode to use modfile and testing
    
    * returned errors back to caller
    
    * passing coverage test
    
    * Revert "passing coverage test"
    
    This reverts commit 28c9938bc9c3e505b7729aa8af0080551312edaf.
    
    * fixing coverage again
    
    * refactored code, updated tests
    
    * unnest configschema
    
    * updated testing
    
    * fix error check with windows and linter
    
    * update test
