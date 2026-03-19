commit 35cee309328ac126861ae6f554971aeb85a08bba
Author: Alex Boten <aboten@lightstep.com>
Date:   Thu Oct 12 14:04:47 2023 -0700

    [chore] refactor test code (#8678)
    
    When looking at
    https://github.com/open-telemetry/opentelemetry-collector/pull/8674, I
    ran into some changes that were harder than they needed to in the test
    utility. I'm separating changes to the prometheusChecker into a separate
    PR to reduce the size of 8674.
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
