commit cf22d5c2356da27c1d9de274941706ab8db65c9e
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Mar 8 14:03:07 2022 -0800

    pdata: deprecate funcs working with InternalRep (#4957)
    
    This PR tries to respect the rules 100%, but the need to keep the deprecated public funcs is unclear since they should not/ cannot be used externally.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    Co-authored-by: Alex Boten <aboten@lightstep.com>
