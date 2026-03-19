commit fca25f20878b608e9a5b8e15643273085cb928f8
Author: Corbin Phelps <corbin.phelps@bluemedora.com>
Date:   Fri Oct 7 15:04:24 2022 -0400

    Fixed issue where telemetryInitializer is not cleaned up when newService errors (#6239)
    
    * Fixed issue where telemetryInitializer is not cleaned up when newService errors
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Updated changelog
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Responding to PR feedback
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Fixed incorrect error check
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Restructured newService function to avoid defer cleanup and make things cleaner
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Removed extra newline
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Made suggested PR fixups
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
