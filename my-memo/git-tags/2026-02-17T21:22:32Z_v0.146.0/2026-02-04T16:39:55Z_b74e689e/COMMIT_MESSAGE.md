commit b74e689e2b94b4cef7f80b11cb529f84d0d12bf1
Author: Constança Manteigas <113898685+constanca-m@users.noreply.github.com>
Date:   Wed Feb 4 17:39:55 2026 +0100

    [chore] Remove incorrect context guidance from Component.Start() documentation (#14468)
    
    The `Start()` method documentation states:
    
    > In that case make sure that the long-running operation does not use
    the context passed to Start() function since that context will be
    cancelled soon and can abort the long-running operation. Create a new
    context from the context.Background() for long-running operations.
    
    This guidance is incorrect. The context passed to `Start()`:
    
    1. Is not cancelled soon after startup - it lives for the entire
    lifetime of the collector
    2. Is only cancelled when the collector shuts down (via signal, error,
    or programmatic shutdown)
    
    The context flows from `Collector.Run(ctx)` ->
    `setupConfigurationComponents(ctx)` -> `service.Start(ctx)` ->
    `graph.StartAll(ctx)` -> each `component.Start(ctx, host)`. After all
    components start, `Run()` enters a control loop and the context remains
    valid until shutdown.
    
    This can be verified by tracing the code:
    - `otelcol/collector.go`: `Run()` passes ctx to
    `setupConfigurationComponents()`, then enters a select loop
    - `service/service.go`: `Start()` passes ctx directly to pipelines
    - `service/internal/graph/graph.go`: `StartAll()` passes the same ctx to
    every component
    
    The recommendation to use `context.Background()` seems also
    questionable. The idiomatic Go pattern for background operations is to
    derive a context from the passed one using `context.WithCancel`, which
    provides automatic cancellation signaling at shutdown.
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
