commit 11acd7a55f9f91b00374781c94b691e64eaa9f51
Author: Alex Boten <aboten@lightstep.com>
Date:   Wed Nov 15 15:23:01 2023 -0800

    [chore] more tweaking for renovatebot (#8928)
    
    The previous change didn't work because opentelemetrybot doesn't have
    write permissions to push changes to the renovatebot branch. Reverting
    to using the standard github token, and testing triggering CI by
    removing the renovatebot label after the change has been pushed.
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
