commit b19b5ac392ec6a630b7dae6c90f7354c77b897f3
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Nov 25 10:19:00 2020 -0500

    Fix mdata generator tool, enforce code is always up-to-date (#2213)
    
    * Fix mdata generator tool, enforce code is always up-to-date
    
    A small issue with the most recent addlicence, downgraded and will fix that in a separate PR.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Add missing :
    
    * Use modtime 0, because checking the code on CI generates new timestamp
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Remove deadlink
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
