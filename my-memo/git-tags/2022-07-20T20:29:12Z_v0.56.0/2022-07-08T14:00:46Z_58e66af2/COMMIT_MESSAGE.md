commit 58e66af2558a56be1f26c759db80e0ed35234607
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Jul 8 16:00:46 2022 +0200

    Fix panic when telemetry metrics are disabled (#5642)
    
    * [service] Add unit test for running the Collector with telemetry metrics disabled
    
    * Only register process metrics when telemetry metrics are enabled
    
    * Restore `require.NoPanics` assertion
    
    * Delete host_test.go.bak
    
    * Add unit test when address is empty
    
    * Address review comment
    
    oops
