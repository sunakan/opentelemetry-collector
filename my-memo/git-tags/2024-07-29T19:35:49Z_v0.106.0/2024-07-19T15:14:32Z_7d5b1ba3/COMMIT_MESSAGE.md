commit 7d5b1ba387e4e171e25bfeea9b70d6fdfbe08fab
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Fri Jul 19 17:14:32 2024 +0200

    [confighttp] Add option to include query params in auth context (#10445)
    
    This PR adds a new option to the ServerConfig's Auth option, allowing
    users to specify a list of query parameters to add to the sources of
    auth data, in addition to HTTP headers. Instead of simply adding all
    parameters, which might be numeruous, we require users to specify which
    ones to include.
    
    Auth extensions don't need to be changed, but should document which
    attributes they expect to find in the context and how to configure
    confighttp to accomplish that.
    
    Fixes #4806
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    ---------
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
