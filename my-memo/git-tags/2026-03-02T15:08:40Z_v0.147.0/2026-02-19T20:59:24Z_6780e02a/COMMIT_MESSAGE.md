commit 6780e02a8f251ba1cef3b232495ade51ba9114ee
Author: Brad Yuan <38081482+bradyuan@users.noreply.github.com>
Date:   Thu Feb 19 15:59:24 2026 -0500

    [docs] Clarify enqueue failure behavior in exporter helper (#14544)
    
    Adds documentation clarifying that data is dropped when it cannot be
    enqueued
    (e.g., queue at capacity or persistent storage cannot accept writes).
    
    This happens before exporter retry logic.
    
    Fixes #5952.
    
    ---------
    
    Co-authored-by: bradyawn <38081482+bradyawn@users.noreply.github.com>
    Co-authored-by: Damien Mathieu <42@dmathieu.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
