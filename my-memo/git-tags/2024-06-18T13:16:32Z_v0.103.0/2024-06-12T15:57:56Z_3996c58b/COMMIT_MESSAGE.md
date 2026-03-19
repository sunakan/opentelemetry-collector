commit 3996c58bad1841a6999c1667d44a2bca41f9c847
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Wed Jun 12 17:57:56 2024 +0200

    [configgrpc] Revert to third-party compressor for zstd (#10394)
    
    We switched back to our compression logic for zstd when a CVE was found
    on the third-party library we were using. Now that the third-party
    library has been fixed, we can revert to that one. For end-users, this
    has no practical effect. The reproducers for the CVE were tested against
    this patch, confirming we are not reintroducing the bugs.
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    ---------
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
