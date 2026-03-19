commit 567a175ed9d6cabb4d26fe85bc273b48f1cedbfc
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Wed May 29 09:10:01 2024 -0700

    [batchprocessor] ensure attributes are set on metadata metric (#10245)
    
    Fixing this bug required a change in mdatagen to ensure attributes could
    be passed in to the telemetry builder.
    
    Fixes #9674
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
