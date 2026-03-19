commit 896335f57cd425d65faa459e5c23b128b9e830f2
Author: alrex <aboten@lightstep.com>
Date:   Wed Sep 29 11:15:15 2021 -0700

    SetupRecordedMetricsTest returns TelemetrySettings (#4093)
    
    * return TelemetrySettings from SetupRecordedMetricsTest
    
    * fix lint
    
    * add ToExporterCreateSettings/ToReceiverCreateSetting
    
    * replace return func with Shutdown
    
    * pass context to shutdown
