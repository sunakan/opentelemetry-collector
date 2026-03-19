commit 7a2d8b5a5cac2ea073f6191a911fe36b5b3bac8c
Author: Joshua MacDonald <jmacd@users.noreply.github.com>
Date:   Sun Mar 1 13:43:32 2026 -0800

    Add context.Context to HTTP middleware interface constructors (#14549)
    
    #### Description
    
    API change in extensionmiddleware, an unstable package to allow
    middleware access to the start context.
    
    HTTP only. gRPC is treated in #14536.
    
    This is technically a breaking change in configmiddleware and for all
    implementations of this extension. We believe no one is using this
    feature outside of this repository, see memorylimiter is fixed here.
    
    #### Link to tracking issue
    
    Part of
    https://github.com/open-telemetry/opentelemetry-collector/issues/14523
    
    #### Documentation
    
    N/A
