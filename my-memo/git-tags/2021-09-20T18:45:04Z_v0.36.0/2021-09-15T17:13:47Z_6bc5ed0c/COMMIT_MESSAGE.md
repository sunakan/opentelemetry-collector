commit 6bc5ed0cf15784a8301581b6255c347302ce205b
Author: alrex <aboten@lightstep.com>
Date:   Wed Sep 15 10:13:47 2021 -0700

    ensure meter provider is configured (#4044)
    
    * ensure meter provider is configured
    
    * guard against invalid settings
    
    * add unit test
    
    * pass TelemetrySettings, use noop meter provider
    
    * revert config changes, will be in separate PR
