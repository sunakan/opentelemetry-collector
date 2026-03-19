commit 71eaf3a5966b37afd062aebfb54d4995fc3fc1a9
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Sep 27 11:53:02 2021 -0700

    Re-enable codecov for test coverage (#4125)
    
    Codecov was disabled here due to security concerns: https://github.com/open-telemetry/opentelemetry-collector/pull/3014/files
    
    This new PR no longer downloads the codecov script from a remote location so is no longer susceptible to the same problem.
