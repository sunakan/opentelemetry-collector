commit 82aed60a1ae5c22a78c0921e67bc0eb2000a6c81
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Sat Sep 22 13:08:16 2018 -0700

    vendor: using go mod
    
    This change is the final half to supplement
    PR #40 which removed vendoring by dep. This
    now uses `go mod`.
    
    Fixes #33
