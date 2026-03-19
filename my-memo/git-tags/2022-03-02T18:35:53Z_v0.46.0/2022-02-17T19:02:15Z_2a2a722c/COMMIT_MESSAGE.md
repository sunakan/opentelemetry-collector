commit 2a2a722cf5683ab7f611d5fef0ecc95a0f345119
Author: Corbin Phelps <cphelps8907@gmail.com>
Date:   Thu Feb 17 14:02:15 2022 -0500

    Set Collector Log in New to avoid Shutdown panic (#4827)
    
    * Set collector logger to Nop on initialization to ensure Shutdown will not panic if called before logger init
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Updated changelog
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
