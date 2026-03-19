commit 6c1f5e7f726a8e8a27a2d9bbc767a3fe84220df4
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Feb 25 09:55:09 2022 -0800

    Remove use of unnecessary internal interface in factory (#4920)
    
    * Remove use of unnecessary internal interface in factory
    
    This PR does not change the design (which is to not allow external implementation),
    but simplifies the way how this is achieved, now that the helpers are in the same package.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Use baseFactory to implement Type() func
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
