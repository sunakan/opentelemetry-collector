commit 6f4057bddd5c57ce1078cd0c9dc48c80f20f60a5
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Mar 25 10:58:06 2022 +0200

    Deprecate last funcs/structs in `componenthelper` (#5069)
    
    Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/4681
    
    These funcs/structs are not used, and in case we need them in multiple places we can add them to `component` directly.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
