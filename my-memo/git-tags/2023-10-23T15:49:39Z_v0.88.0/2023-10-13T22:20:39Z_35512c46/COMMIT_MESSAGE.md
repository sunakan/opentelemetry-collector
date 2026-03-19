commit 35512c466577036b0cc306673d2d4ad039c77f1c
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Fri Oct 13 15:20:39 2023 -0700

    [chore] fix double caching of golang dependencies (#8680)
    
    Avoid double caching go dependencies, it ends up slowing the build with
    decompression errors.
