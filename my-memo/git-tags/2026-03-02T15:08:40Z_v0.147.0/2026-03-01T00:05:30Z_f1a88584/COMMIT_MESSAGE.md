commit f1a885840c9454c8a6b66df295951ec393aae221
Author: Joshua MacDonald <jmacd@users.noreply.github.com>
Date:   Sat Feb 28 16:05:30 2026 -0800

    Add context.Context to gRPC middleware interface constructors (#14536)
    
    #### Description
    
    API change in extensionmiddleware, an unstable package to allow
    middleware access to the start context.
    
    gRPC only. This exposes the same issue in HTTP middleware, which will
    have to be treated separately.
    
    This is technically a breaking change in configmiddleware and for all
    implementations of this extension. We believe no one is using this
    feature outside of this repository, see memorylimiter is fixed here.
    
    #### Link to tracking issue
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/14523
    
    #### Documentation
    
    N/A
