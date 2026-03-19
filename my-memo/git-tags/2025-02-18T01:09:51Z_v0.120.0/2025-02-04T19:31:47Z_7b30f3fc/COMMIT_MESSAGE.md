commit 7b30f3fc1d1144311f9abf63987a5b37074ba668
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Feb 4 11:31:47 2025 -0800

    [chore] Move the logic to not propagate context propagation to async queue only (#12276)
    
    This PR will allow future PR that implements sync/disabled queue to
    propagate cancellation.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
