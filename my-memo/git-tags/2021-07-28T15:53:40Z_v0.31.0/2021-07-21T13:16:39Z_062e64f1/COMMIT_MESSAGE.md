commit 062e64f1d7466400cbc5b0bd727ec94175a0e0de
Author: Min Xia <xiami@amazon.com>
Date:   Wed Jul 21 13:16:39 2021 +0000

    Access ballast size from Ballast extension via Host.GetExtensions interface (#3634)
    
    * Remove the global ballast size variable in ballast extension
    * Access Ballast extension in Memory Limiter processor via Host.GetExtensions
    
    **Link to tracking Issue:**
    #2516
