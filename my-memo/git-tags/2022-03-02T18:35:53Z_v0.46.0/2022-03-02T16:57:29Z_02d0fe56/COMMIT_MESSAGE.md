commit 02d0fe568b21597d4ac143ce7183de4c9ae5dd6d
Author: Corbin Phelps <corbin.phelps@bluemedora.com>
Date:   Wed Mar 2 11:57:29 2022 -0500

    Resolved race condition in collector when calling `Shutdown` (#4878)
    
    * Refactored collector shutdown pattern to remove race condition
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Updated changelog
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Remove Created state from collector to make shutdown behave more in line with language standards
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Removed log from shutdown recover that caused race condition
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Added lint ignore for shutdown recover
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
