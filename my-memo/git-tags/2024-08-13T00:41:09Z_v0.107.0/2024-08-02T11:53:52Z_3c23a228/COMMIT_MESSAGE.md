commit 3c23a228abcc43273ce8be56fc67a9bf1d1693cc
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Fri Aug 2 05:53:52 2024 -0600

    [chore] set fail-fast to false for contrib tests (#10791)
    
    Continuation of
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/32333.
    This should help us identify more components that break with Core
    changes.
