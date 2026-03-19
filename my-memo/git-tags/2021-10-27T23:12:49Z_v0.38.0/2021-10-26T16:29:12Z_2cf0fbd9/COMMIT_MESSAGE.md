commit 2cf0fbd916bf892f32f60e3ed02c47c97fb047a6
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Tue Oct 26 18:29:12 2021 +0200

    Remove protocol-specific authenticator interfaces (#4255)
    
    * Remove protocol-specific authenticator interfaces
    
    This PR removes the gRPC and HTTP-specific interfaces from
    the client authenticators. Implementations should now comply
    with the main top-level interface, which defines the functions
    previously defined at the individual interfaces.
    
    Fixes #4239
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * Changed test case description
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
