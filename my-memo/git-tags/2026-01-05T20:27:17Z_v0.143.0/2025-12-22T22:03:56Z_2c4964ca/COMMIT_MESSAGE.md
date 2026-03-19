commit 2c4964ca66c3e3fd2515d9ca0775401fb9b77bcd
Author: Shaunak Kashyap <ycombinator@gmail.com>
Date:   Tue Dec 23 03:33:56 2025 +0530

    [fips140][`configtls.TestTPM_tpmCertificate_errors`] Skip test if `GODEBUG=fips140=only` is set (#14255)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    In #14225, we skipped the `configtls.TestTPM_loadCertificate` unit test
    if the tests were run with `GODEBUG=fips140=only`. Otherwise, the unit
    test failed with a `panic: crypto/cipher: use of CFB is not allowed in
    FIPS 140-only mode` error.
    
    Turns out there was a second unit test in the same package that needed
    skipping for the same reason: `configtls.TestTPM_tpmCertificate_errors`.
    This PR skips it too.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Follow up to #14225
