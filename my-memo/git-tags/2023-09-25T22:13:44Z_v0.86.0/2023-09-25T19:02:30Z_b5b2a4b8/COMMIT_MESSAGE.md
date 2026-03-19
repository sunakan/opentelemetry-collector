commit b5b2a4b87b6f0c11831766cad8384d2f47a93e6d
Author: Alex Boten <aboten@lightstep.com>
Date:   Mon Sep 25 12:02:30 2023 -0700

    [chore] use multimod diff (#8513)
    
    This is revert-ing the revert of
    https://github.com/open-telemetry/opentelemetry-collector/pull/8024.
    This also inverses the return of `check-changes` to match the original
    behaviour.
    
    Fixes #8149
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
