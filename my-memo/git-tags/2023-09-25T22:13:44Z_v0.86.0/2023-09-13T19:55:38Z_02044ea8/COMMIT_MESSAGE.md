commit 02044ea8a863d3110a74776f1eb520b0727706f2
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Sep 13 12:55:38 2023 -0700

    [chore] [exporterhelper] Enable TestQueuedRetry_StopWhileWaiting test (#8396)
    
    The exporter doesn't use the jaeger queue library anymore. So the TODO
    can be resolved. We also need to change the mock request from transient
    error to permanent error to make sure that the first request is kept in
    the retry loop while the second one is in the queue
