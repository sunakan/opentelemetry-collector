commit 9c5bf5488017ef07822bf358b12d94522e84440e
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed Mar 27 14:22:52 2024 -0600

    [component] make Type implement MarshalText (#9856)
    
    **Description:**
    Adds `MarshalText` function so that `Type` can be properly marshaled as yaml.
    
    **Link to tracking Issue:** Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/9855
