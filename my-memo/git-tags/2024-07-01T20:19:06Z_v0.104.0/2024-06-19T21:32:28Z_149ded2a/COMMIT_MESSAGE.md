commit 149ded2ad33df6341a00ae8bd107fcff00bff276
Author: Joshua MacDonald <jmacd@users.noreply.github.com>
Date:   Wed Jun 19 14:32:28 2024 -0700

    Print Span.TraceState() in debugexporter (#10421)
    
    #### Description
    Span.TraceState() is not printed, but is a part of the OTel span data
    model.
    
    #### Link to tracking issue
    Part of https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/31918
    
    #### Testing
    ✅
