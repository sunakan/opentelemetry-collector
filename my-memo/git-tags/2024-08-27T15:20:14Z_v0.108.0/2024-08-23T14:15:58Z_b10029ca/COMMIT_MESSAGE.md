commit b10029ca8f46d75cfd8466fbff9eeb4bb8a2dd99
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Fri Aug 23 07:15:58 2024 -0700

    remove unnecessary level (#10951)
    
    The MeterProvider used to generate the matric will make calls to
    recording the metric Noops. Removing the level check.
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
