commit 3203167e9ae8f14eded53a23bc51919b78be31d2
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Jan 29 15:58:43 2025 -0800

    Make registration of callback for async metric always optional (#12204)
    
    This PR also solves one more issues with the new interface, which is the
    ability to record multiple observations for a single async metric using
    one callback.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
