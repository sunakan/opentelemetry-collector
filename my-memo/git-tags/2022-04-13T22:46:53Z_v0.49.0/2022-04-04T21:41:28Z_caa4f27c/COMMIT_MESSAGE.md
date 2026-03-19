commit caa4f27c0d899c61e00731da3c748c705c79612f
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Apr 4 14:41:28 2022 -0700

    Setup the correct meter provider if telemetry.useOtelForInternalMetrics featuregate enabled (#5146)
    
    This PR also removes the set of the global MeterProvider, similarly with #5138.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
