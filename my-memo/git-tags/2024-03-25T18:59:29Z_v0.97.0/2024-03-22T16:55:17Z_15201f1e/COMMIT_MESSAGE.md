commit 15201f1e5967fd1bc1e51c118178ab109170fe07
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Mar 22 09:55:17 2024 -0700

    Prevent starting unnecessary goroutines (#9817)
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/9739
    Replaces
    https://github.com/open-telemetry/opentelemetry-collector/pull/9814
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
