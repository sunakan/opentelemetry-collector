commit e69ca358a9cf3464d6ec40ea4f5366d57a36057e
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Mon Feb 3 15:17:06 2025 -0800

    [service] ensure endpoint is prefixed w/ scheme (#12258)
    
    #### Description
    
    Users can enter the OTLP endpoint w/o a scheme in the prefix. This
    causes issues with the URL parsing code in the config package.
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/12254
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
