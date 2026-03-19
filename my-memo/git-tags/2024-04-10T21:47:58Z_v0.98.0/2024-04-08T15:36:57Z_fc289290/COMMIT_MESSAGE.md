commit fc289290613ae79f5038dae7a92545ceefecf9cb
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Mon Apr 8 08:36:57 2024 -0700

    move internal/testdata to pdata/testdata (#9885)
    
    This reduces dependencies from the consumer package while making
    testdata available across repos. It will allow us to remove duplicated
    code and its a fairly small surface area.
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/9886
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
