commit b7214f9205dd71a7a0b29e02da959548f0a21c76
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Wed Feb 11 13:34:58 2026 -0800

    [chore] add gomodernize makefile target (#14570)
    
    Makes running modernize to fix things across the codebase easier. When
    running it locally, it returned an error that `-bloop` was not a known
    flag, so i removed it.
    
    Signed-off-by: alex boten <223565+codeboten@users.noreply.github.com>
