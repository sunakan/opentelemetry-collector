commit c1c8fcd6ccde9e469b5e2e0569dd897c7e6b32a9
Author: Curtis Robert <crobert@splunk.com>
Date:   Tue Aug 13 03:24:54 2024 -0700

    [service] Fix memory leaks and enable goleak check in tests (#9241)
    
    **Description:** <Describe what has changed.>
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    This change adds `goleak` to check for memory leaks. Originally there
    were 3 failing tests in the `service` package, so I'll describe changes
    in relation to resolving each test's failing goleak check.
    
    1. `TestServiceTelemetryRestart`: Simplest fix, close the response body
    to make sure goroutines aren't leaked by reopening a server on the same
    port. This was just a test issue
    2. `TestTelemetryInit.UseOTelWithSDKConfiguration`: The [meter
    provider](https://github.com/open-telemetry/opentelemetry-collector/blob/fb3ed1b0d65b91e49209a7e60d40ef4b607c6b10/service/telemetry.go#L57-L58)
    was being started in the initialization process ([metrics
    reference](https://github.com/open-telemetry/opentelemetry-collector/blob/fb3ed1b0d65b91e49209a7e60d40ef4b607c6b10/service/internal/proctelemetry/config.go#L135)),
    but never shutdown. The type originally being used
    (`meter.MetricProvider`) was the base interface which didn't provide a
    `Shutdown` method. I changed this to use the `sdk` interfaces that
    provide the required `Shutdown` method. The actual functionality of
    starting the providers was already using and returning the `sdk`
    interface, so the actual underlying type remains the same. Since `mp` is
    a private member and `sdkmetric` and implement the original type, I
    don't believe changing the type is a breaking change.
    3. `TestServiceTelemetryCleanupOnError`: This test starts a server using
    a sub-goroutine, cancels it, starts again in a subroutine, and cancels
    again in the main goroutine. This test showed the racing behavior of the
    subroutine running
    [`server.ListenAndServe`](https://github.com/open-telemetry/opentelemetry-collector/blob/fb3ed1b0d65b91e49209a7e60d40ef4b607c6b10/service/internal/proctelemetry/config.go#L148)
    and the main goroutine's functionality of [calling
    close](https://github.com/open-telemetry/opentelemetry-collector/blob/fb3ed1b0d65b91e49209a7e60d40ef4b607c6b10/service/telemetry.go#L219)
    and then starting the server again [right
    away](https://github.com/open-telemetry/opentelemetry-collector/blob/fb3ed1b0d65b91e49209a7e60d40ef4b607c6b10/service/service_test.go#L244).
    The solution here is to add a `sync.WaitGroup` variable that can
    properly block until all servers are closed before returning from
    `shutdown`. This will allow us to ensure it's safe to proceed knowing
    the ports are free, and server is fully closed.
    
    The first test fix was just a test issue, but 2 and 3 were real bugs. I
    realize it's a bit hard to read with them all together, but I assumed
    adding PR dependency notes would be more complicated.
    
    **Link to tracking Issue:** <Issue number if applicable>
    #9165
    
    **Testing:** <Describe what testing was performed and which tests were
    added.>
    All tests are passing as well as goleak check.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
