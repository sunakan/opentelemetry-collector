commit b3429cf7b262b81e11ee852fbda49269b0b60701
Author: JBD <jbd@golang.org>
Date:   Fri Jun 26 11:31:28 2020 -0700

    Merge componentdocs into componenttest (#1199)
    
    * Merge componentdocs into componenttest
    
    componentdocs is used for testing reasons, merging the docs validation code into the test package helps other developers to discover the existence of it.
    
    Rename VerifyComponentDocumentation for CheckDocs to help verbosity and have consistency with the other checker functions in the module.
    
    Signed-off-by: JBD <jbd@google.com>
    
    * Fix lint error
