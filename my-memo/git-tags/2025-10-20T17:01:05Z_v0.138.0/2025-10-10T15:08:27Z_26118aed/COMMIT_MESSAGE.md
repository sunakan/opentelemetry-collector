commit 26118aed4b6bba41f2af07f6c1e3aa85dcf6acc0
Author: Shaunak Kashyap <ycombinator@gmail.com>
Date:   Fri Oct 10 08:08:27 2025 -0700

    TLS curve unit test improvement (#13949)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR makes some minor improvements to the
    `configtls.TestCurvePreferences` unit test:
    * It runs the test cases as sub-tests using `t.Run` so it's easy to spot
    which specific case is failing, and
    * It improves the error when an invalid curve is specified to include
    the _name_ of the curve in the error message (instead of `0`).
