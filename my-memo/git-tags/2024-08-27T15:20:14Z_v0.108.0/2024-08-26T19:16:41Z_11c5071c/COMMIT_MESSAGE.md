commit 11c5071c2e4cce22d13fbf1dd846a51c9b516f89
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Mon Aug 26 12:16:41 2024 -0700

    [chore] newObsReport is no longer needed (#10957)
    
    This is leftover from the refactor to make that func private to the
    package. Removing it as all the callers can use newExporter directly.
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
