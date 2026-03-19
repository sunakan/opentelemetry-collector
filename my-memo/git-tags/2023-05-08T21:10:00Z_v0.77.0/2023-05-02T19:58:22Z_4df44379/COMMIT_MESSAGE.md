commit 4df44379e0940f2da27a0867efe891f92bb7ba17
Author: Anthony Mirabella <a9@aneurysm9.com>
Date:   Tue May 2 15:58:22 2023 -0400

    [config/confighttp] Ensure Auth happens after compression (#7574)
    
    When request signing-based authentication extensions are
    used it is necessary to ensure that the Auth RoundTripper
    is the innermost as changes to the request by other
    RoundTrippers (such as compression or headers) may invalidate
    the request signature.  This change will ensure that the Auth
    RoundTripper is invoked after all others and is followed directly
    by the http.Transport.
    
    ---------
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
