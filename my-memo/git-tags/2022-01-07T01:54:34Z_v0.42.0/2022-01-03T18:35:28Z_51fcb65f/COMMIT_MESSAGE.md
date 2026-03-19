commit 51fcb65f02055638f223c6abd3d6d2d644c696db
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Mon Jan 3 19:35:28 2022 +0100

    Implement default server authenticators (#4558)
    
    * Implement default server authenticators
    
    Allow the interfaces to be extended without affecting implementations by allowing authenticators to provide which functions to override.
    
    This is a non-breaking change, and current implementations might be changed in the future to use this.
    
    Fixes #4556
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * fixuop
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * Add missing godoc
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
