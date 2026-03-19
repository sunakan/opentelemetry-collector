commit 34b2459597f12409d83c20ab3ec8414e28221d81
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Sat Jan 18 07:53:35 2020 +0530

    Fixed a nil pointer deference error with unused receivers (#508)
    
    If a receiver is defined but not used in any pipelines, collector
    crashes with nil pointer deference error. This patch fixes the issue.
