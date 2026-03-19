commit 2a6a3f9eabf3ffa47fe3e4ab1562b7e82d8afac5
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Tue Mar 19 10:14:15 2024 -0700

    [chore] rework memorylimiter test to avoid flaky tests (#9733)
    
    Peeling this set of changes from #9584 as a separate PR.
    
    These changes allow a reduction of issues when working with ARM64, which
    seems to fail on some of the resource locking used in those tests.
