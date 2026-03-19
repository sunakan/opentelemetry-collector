commit 7589901a4363cad6ead661d5b26932cd53a67ea9
Author: Prateek Kumar <85689959+PrateekKumar1709@users.noreply.github.com>
Date:   Wed Sep 25 15:16:06 2024 -0400

    Add mdatagen replace option to check-contrib target (#11223)
    
    #### Description
    This PR addresses the issue of contrib tests not testing the updated
    mdatagen version. It modifies the `check-contrib` and `restore-contrib`
    targets in the Makefile to ensure that the contrib tests use the local
    version of the `mdatagen` package.
    
    #### Link to tracking issue
    Fixes #11167
    
    #### Testing
    All existing tests pass with `make test`
    
    Signed-off-by: Prateek Kumar <85689959+PrateekKumar1709@users.noreply.github.com>
