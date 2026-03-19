commit 0b88b764f5c6c60b6611d6cf101ce9069125fecd
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed Dec 18 10:52:09 2024 -0700

    [interna/sharedcomponent] Use a ring buffer to restrict remembered status count (#11826)
    
    #### Description
    Use a ring buffer to only remember the last 5 events. This ensures we
    remember a reasonable number of events during startup, so that a status
    aggregator gets the events for all instances. Then during normal
    operation, when we're done adding sources and no longer need to replay
    events, we don't have to remember every single event.
    
    #### Link to tracking issue
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/11818
    
    #### Testing
    
    `go test status_test.go -count 1000 -failfast` still passes with many
    tries.
