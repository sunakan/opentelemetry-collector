commit c257abaa5dab5887da8ac186e9b35b0fcf837012
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Mar 3 09:32:14 2022 -0800

    Small improvements in collector tests, and atomic usage (#4948)
    
    * Change state to be a int32 and use atomic ops accordingly.
    * Change test that should expect certain state to check for that instead of using Eventually.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
