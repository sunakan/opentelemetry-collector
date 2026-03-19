commit 5ee716fe64684bfd7350110d5b52d421cbb892f0
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Fri Mar 11 23:48:53 2022 +0100

    Implement default client authenticators (#4837)
    
    * Implement default client authenticators
    
    Similar to #4558, this allows client authenticators to be created without having to implement all the functions from the ClientAuthenticator interface.
    
    This is non-breaking change.
    
    Fixes #4557
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
