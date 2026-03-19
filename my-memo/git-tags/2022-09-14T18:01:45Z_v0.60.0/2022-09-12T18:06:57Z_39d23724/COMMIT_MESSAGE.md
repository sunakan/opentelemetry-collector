commit 39d2372496b4f04de95e75e50fe942092412f43a
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Sep 12 11:06:57 2022 -0700

    Deprecate New[Slice|Map]FromRaw functions (#6045)
    
    Use New[Slice|Map]().FromRaw() instead fo consistency with the interface provided by primitive slices.
