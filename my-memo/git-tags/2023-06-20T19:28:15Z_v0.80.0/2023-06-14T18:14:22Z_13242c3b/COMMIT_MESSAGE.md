commit 13242c3ba3633fcb076cc08520a3462445050688
Author: Sean Marciniak <30928402+MovieStoreGuy@users.noreply.github.com>
Date:   Thu Jun 15 03:44:22 2023 +0930

    [service] Ensure test service eventually connects to telemetry port on restart (#7893)
    
    There appears to be a flake in waiting for resources being released
    within tests:
    
    ```
        service_test.go:345:
                    Error Trace:    /home/runner/work/opentelemetry-collector/opentelemetry-collector/service/service_test.go:345
                    Error:          Received unexpected error:
                                    Get "http://localhost:8888/metrics": dial tcp [::1]:8888: connect: connection refused
                    Test:           TestServiceTelemetryRestart
    ```
    See test run:
    https://github.com/open-telemetry/opentelemetry-collector/actions/runs/5267677421/jobs/9523273917?pr=7703
