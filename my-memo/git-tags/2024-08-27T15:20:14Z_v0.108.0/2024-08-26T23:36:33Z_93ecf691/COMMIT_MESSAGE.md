commit 93ecf691bc3ca86c2c5b27675b6b5cc6355f0d3d
Author: Viral Verma <102751195+vvs-personalstash@users.noreply.github.com>
Date:   Tue Aug 27 05:06:33 2024 +0530

    [otelcol] Fix grpclogger to capture correct caller location (#10773)
    
    #### Description
    Cleaned up Grpc logs to make them reference the location where the log
    statements are written instead of zapgrpc/zapgrpc.go:176
    
    #### Link to tracking issue
    Fixes #10772
    Fixes https://github.com/jaegertracing/jaeger/issues/5784
    
    ---------
    
    Signed-off-by: Yuri Shkuro <github@ysh.us>
    Co-authored-by: Yuri Shkuro <github@ysh.us>
    Co-authored-by: Yuri Shkuro <yurishkuro@users.noreply.github.com>
