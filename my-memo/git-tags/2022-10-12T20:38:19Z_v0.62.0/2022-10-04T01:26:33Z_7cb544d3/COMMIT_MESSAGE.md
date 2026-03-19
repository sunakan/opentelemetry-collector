commit 7cb544d3be3617a1463fd573de4be9f4064e5f8c
Author: Alex Boten <aboten@lightstep.com>
Date:   Mon Oct 3 18:26:33 2022 -0700

    [chore] more localhost configuration (#6227)
    
    Additional tests were binding telemetry on 0.0.0.0:8888, this change fixes that to bind to localhost instead.
