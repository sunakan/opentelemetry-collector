commit e912cf672711014f234a5a103697bc05a00e379d
Author: tharunn0 <tharunvs777@gmail.com>
Date:   Mon Mar 9 16:07:12 2026 +0530

    fix(otlpexporter): prevent nil pointer PANIC when exporter clients are uninitialized (#14694)
    
    Add defensive nil checks in pushLogs, pushTraces, pushMetrics, and
    pushProfiles to prevent a nil pointer dereference if these methods are
    invoked before the OTLP exporter initializes its gRPC clients in
    start().
    
    Instead of panicking, the exporter now returns an error when the client
    has not been initialized.
    
    Added tests and changelog entry.
    
    Fixes #14663
