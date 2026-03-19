commit 07236c11fb274969d4794af32d831cf1d3243fd2
Author: Ryan Fitzpatrick <rmfitzpatrick@users.noreply.github.com>
Date:   Tue Oct 6 12:51:00 2020 -0400

    Rollback gopsutil v2.20.9 to v2.20.6 (#1911)
    
    This version introduced a race condition:
    https://github.com/shirou/gopsutil/pull/951
