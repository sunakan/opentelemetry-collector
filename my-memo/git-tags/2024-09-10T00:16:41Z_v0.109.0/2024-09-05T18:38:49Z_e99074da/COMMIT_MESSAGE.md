commit e99074da2f6525cd177f26b46b8d03fef2fe4f35
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Thu Sep 5 11:38:49 2024 -0700

    [service] implement a noop tracer provider (#11026)
    
    This is to address some of the memory concerns around the SDK's noop
    tracer provider. Instead of using the published noop tracer provider, we
    implement our own to avoid the cost of context propagation, which has
    been proven to be high enough to cause issues for end users.
    
    Part of #10858
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
