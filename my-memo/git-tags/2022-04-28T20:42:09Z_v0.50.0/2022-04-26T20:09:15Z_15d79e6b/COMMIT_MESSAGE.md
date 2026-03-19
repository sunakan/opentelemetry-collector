commit 15d79e6ba397fd6d1293a20be4fba0e8444058d5
Author: Corbin Phelps <corbin.phelps@bluemedora.com>
Date:   Tue Apr 26 16:09:15 2022 -0400

    Reduced logging level for collector shutdown due to context cancel (#5258)
    
    * Reduced logging level for collector shutdown due to context cancel
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Updated changelog with PR number
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Modified logging of context cancel to include error string
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Added back error wrap on zap.Error
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
