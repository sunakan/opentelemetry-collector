commit 60a3e5aa976565ee2b7fb033151c8c5a41a5c600
Author: John L. Peterson (Jack) <john.peterson@datadoghq.com>
Date:   Mon Sep 23 10:55:35 2024 -0400

    [chore] fix TestProcessTelemetryWithHostProc test (#11222)
    
    #### Description
    Fixes failing unit test TestProcessTelemetryWithHostProc under
    service/internal/proctelemetry/process_telemetry_linux_test.go due to
    incorrect metric name
    
    #### Link to tracking issue
    Fixes [#11221](https://github.com/open-telemetry/opentelemetry-collector/issues/11221)
