commit 0be295f0616222ec4993d86f3b694472fee31b2b
Author: Dino Oliva <dinooliva@users.noreply.github.com>
Date:   Fri Sep 13 11:46:21 2019 -0700

    Change log statement in Prometheus receiver from info to debug. (#344)
    
    * Change log statement in Prometheus receiver from info to debug.
    
    * Add comment about the metrics adjuster potentially returning empty metrics
    
    * Revert change to metrics adjuster call
