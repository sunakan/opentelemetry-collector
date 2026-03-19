commit b5635a7a90d204453915db36e4e29182ee2dddb2
Author: Alex Boten <aboten@lightstep.com>
Date:   Wed Oct 4 11:50:26 2023 -0700

    remove workaround to ignore for errors when creating instruments (#8575)
    
    The workaround had been put in place because of a restriction on `/`
    characters in the name of the instrument. This is no longer an issue.
    This PR fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/8346
    
    Follows
    https://github.com/open-telemetry/opentelemetry-collector/pull/8574
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
