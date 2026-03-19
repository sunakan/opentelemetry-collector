commit b688e7a6fcebf51b583a29a7107149f8a2669531
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Wed Aug 7 13:35:19 2024 -0700

    [semconv] update template to remove deprecated semconv attributes (#10829)
    
    This PR is updating the jinja template to ignore deprecated attributes
    as was done in
    https://github.com/open-telemetry/opentelemetry-go/pull/5476.
    Additonally, generate v1.26.0 semconv package
    
    This replaces
    https://github.com/open-telemetry/opentelemetry-collector/pull/10249
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10813
    
    NOTE: This leaves empty resource/trace/event files, but I'd rather not
    remove the methods they expose in this change
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
