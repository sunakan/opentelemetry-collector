commit b33913ba527d8ca9ddac79c82760b61aa6192b1b
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Mon Aug 26 12:19:28 2024 -0700

    [service] add level for trace configuration (#10892)
    
    This allows users to configure a Noop TracerProvider if needed. Note
    that this configuration option breaks the zpages extension, which relies
    on a SDK implementation.
    
    Fixes #10890
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
