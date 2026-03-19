commit ef5f34f92d61dd87e92463227681f98884b04975
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Feb 3 22:05:24 2025 -0800

    Fix default batcher to correctly call all done callbacks exactly once (#12260)
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/12247
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
