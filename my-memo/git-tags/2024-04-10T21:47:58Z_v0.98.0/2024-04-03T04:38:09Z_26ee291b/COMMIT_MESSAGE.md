commit 26ee291bce644b2e89e05e963650ec9f386ab544
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Tue Apr 2 21:38:09 2024 -0700

    [confmap] support unmarshaling for embedded structs with and without squashing (#9861)
    
    This is taking a small slice of #9750 to document the behavior of
    confmap and make sure we can unmarshal embedded structs.
