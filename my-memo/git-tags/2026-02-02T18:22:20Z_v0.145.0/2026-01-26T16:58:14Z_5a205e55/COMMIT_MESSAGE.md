commit 5a205e5538a7bb32cdf5b58e388f0173386d9122
Author: Shaunak Kashyap <ycombinator@gmail.com>
Date:   Mon Jan 26 08:58:14 2026 -0800

    [ci] Run Go unit tests with `GODEBUG=fips140=only` (#13926)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR runs all Golang unit tests in this repository with the
    `GODEBUG=fips140=only` environment set. This is useful to detect any
    FIPS-140 violations of code covered by these unit tests.
    
    To achieve the above, this PR introduces a new `gotest-fips140-only`
    target in `Makefile` and a corresponding `test-fips140-only` target in
    `Makefile.Common`.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Relates to #13925
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
