commit 10ae1ef8a1d22880f70850dd059fefae8b49c1a5
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Apr 4 08:57:23 2022 -0700

    Do not set TraceProvider to global (#5138)
    
    The reason is because soon we will have the config for the tracing/metrics providers in the main config (already started).
    When this happens then we can have users "reconfigure" that via the watch API, and re-setting the global is not allowed in otel (also not restart friendly). Because of that we should break this behavior now, and not install the global.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
