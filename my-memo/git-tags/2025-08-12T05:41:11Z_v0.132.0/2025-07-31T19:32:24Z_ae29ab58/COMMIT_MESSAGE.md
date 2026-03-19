commit ae29ab583a9fa740cdb7790d822f8730de667aba
Author: Andrew Wilkins <axw@elastic.co>
Date:   Fri Aug 1 03:32:24 2025 +0800

    [chore] service: simplify telemetry shutdown (#13535)
    
    #### Description
    
    Simplify code by using the SDK.Shutdown method, which internally shuts
    down each of the providers.
    
    #### Link to tracking issue
    
    Preparation work for
    https://github.com/open-telemetry/opentelemetry-collector/issues/4970
    
    #### Testing
    
    N/A, non-functional change.
    
    #### Documentation
    
    N/A
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
