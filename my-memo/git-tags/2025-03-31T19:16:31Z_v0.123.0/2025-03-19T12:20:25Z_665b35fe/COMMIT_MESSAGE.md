commit 665b35fe96443d0a83b57969cf469e13f4698b56
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Wed Mar 19 13:20:25 2025 +0100

    Revert "fix(deps): update module github.com/shirou/gopsutil/v4 to v4.25.2 (#12654)" (#12674)
    
    #### Description
    
    The cross-build test for the AIX platform (a tier 3 platform) is failing
    on main after the upgrade #12654. This is due to a bug in that patch
    release that was reported
    [here](https://github.com/shirou/gopsutil/issues/1806), but the fix
    hasn't been released yet. For that reason, I suggest reverting the
    upgrade until the next release.
