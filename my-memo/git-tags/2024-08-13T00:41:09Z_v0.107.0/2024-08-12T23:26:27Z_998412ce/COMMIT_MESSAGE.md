commit 998412ced7c4e894a7234da390644b48056b4dbc
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Mon Aug 12 16:26:27 2024 -0700

    [service] Allow users to disable the tracer provider via the feature gate `service.noopTracerProvider` (#10859)
    
    Previously the service was returning an instance of a SDK tracer
    provider regardless of whether there were any processors configured
    causing resources to be consumed unnecessarily.
    
    Fixes #10858
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
