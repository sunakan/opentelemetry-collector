commit 843bbc3148ffe844d4a61b520fe78eb03ae7d694
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Sun Mar 1 18:07:41 2026 +0100

    [scraperhelper] Make log scrapers emit log-related receiver telemetry (#14654)
    
    #### Description
    
    Log scrapers currently emit the same receiver telemetry as metric
    scrapers, such as the `otelcol_receiver_accepted_metric_points` metric
    (instead of `otelcol_receiver_accepted_log_records`), or spans named
    `receiver/myreceiver/MetricsReceived` (instead of
    `receiver/myreceiver/LogsReceived`). This PR fixes that.
    
    #### Testing
    
    I adjusted the test which checks the emitted traces.
