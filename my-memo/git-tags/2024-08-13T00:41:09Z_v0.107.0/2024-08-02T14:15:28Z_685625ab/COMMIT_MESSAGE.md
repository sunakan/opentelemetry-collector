commit 685625abb4703cb2e45a397f008127bbe2ba4c0e
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Fri Aug 2 08:15:28 2024 -0600

    [chore] remove vmmeter from `build-and-test.yaml` (#10590)
    
    These things were added for the [arm
    build](https://github.com/open-telemetry/opentelemetry-collector/pull/9584)
    which has been moved to its own job.
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10587
