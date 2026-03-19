commit 9958693380b5a5c9d50494bb37afa25fe18591fd
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Apr 15 21:25:02 2025 -0700

    Reject too large elements to the queue (#12847)
    
    Without this change, the requests without deadline will block forever
    until the space is available which will never be.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
