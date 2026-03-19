commit e922abe9cbf9cfe0b748206b3f395401168ff8a9
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Fri Sep 6 00:53:35 2024 -0700

    [exporter] [chore] move exporter.exporterhelper.request to internal (#11042)
    
    #### Description
    
    This PR moves `exporter/exporterhelper/request.go` to
    `exporter/internal/request.go` to avoid circular dependency.
    
    Context: As part of the effort to move from a queue->batch pushing model
    to a queue->batch pulling model in exporter, we will be depending on
    `Request` from `exporter/exporterbatcher`. However,
    `exporter/exporterhelper` already depends on `exporter/exporterbatcher`,
    so we need to move `Request` out of `exporter/exporterhelper`
    
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/issues/10368
    
    #### Testing
    
    Ran `opentelemetry-collector$ make` to make sure all tests still pass.
