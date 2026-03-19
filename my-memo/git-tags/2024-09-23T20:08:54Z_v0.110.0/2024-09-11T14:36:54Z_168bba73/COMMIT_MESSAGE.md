commit 168bba73f01d1985084c183d6a1b151e5ab75324
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Wed Sep 11 07:36:54 2024 -0700

    [service] fix proctelemetry registration bug (#11093)
    
    This bug caused proctelemetry metrics to not be registered if a user
    configured the Collector's internal telemetry via `readers` only and
    disabled `address`. The check in the `if` statement is no longer needed
    since a no-op meter provider will be configured unless the telemetry
    level is set.
    
    Mentioned in #10919
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
