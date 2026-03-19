commit 2449345456482f2fa5a22f5ee1fa66b26f79cdc1
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Fri Jul 19 01:20:55 2024 -0700

    [chore] update to mapstructure 2.0.0 (#10610)
    
    #### Description
    Reprises
    https://github.com/open-telemetry/opentelemetry-collector/pull/10300
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Fixed a few tests that no longer make sense. One test will conflict if
    https://github.com/open-telemetry/opentelemetry-collector/pull/10609 is
    merged first.
