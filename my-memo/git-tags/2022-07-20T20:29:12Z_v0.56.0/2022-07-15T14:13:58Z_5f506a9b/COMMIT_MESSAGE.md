commit 5f506a9b9bf1b01b47db0c610a2539d05825aacc
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Jul 15 16:13:58 2022 +0200

    [exporter/logging] Create logging exporter logger from service logger (#5677)
    
    Build the logger on the logging exporter's logger from the one on `TelemetrySettings`, so that the logger honors the configuration settings on `telemetry::logs` and the configuration options on `CollectorSettings.LoggingOptions`.
    
    Depends on #5678
    
    **Link to tracking Issue:** Fixes #5652
    
    **Documentation:** Documented the feature gate.
