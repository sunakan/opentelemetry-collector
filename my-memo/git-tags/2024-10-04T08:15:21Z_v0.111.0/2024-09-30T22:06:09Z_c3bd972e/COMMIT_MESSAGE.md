commit c3bd972e1a262d4dff0a33e15e7e3d2068ede804
Author: Joshua MacDonald <jmacd@users.noreply.github.com>
Date:   Mon Sep 30 15:06:09 2024 -0700

    Refactor batch processor export method (#11309)
    
    #### Description
    
    Split the internal `batcher.export()` interface into three methods. This
    is a refactoring that was applied in
    https://github.com/open-telemetry/otel-arrow/tree/main/collector/processor/concurrentbatchprocessor
    and is being back-ported as part of #11308. The reason this refactoring
    is needed is that the parent context of the export() request will be
    manipulated in common code (vs signal-specific code) for tracing
    support.
    
    #### Link to tracking issue
    Part of #11308
    
    #### Testing
    Existing tests cover this.
    
    ---------
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
