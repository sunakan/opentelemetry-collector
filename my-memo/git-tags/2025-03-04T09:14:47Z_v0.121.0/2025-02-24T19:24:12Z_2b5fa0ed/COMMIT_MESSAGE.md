commit 2b5fa0ed51fabd128d30ad07d50535df95444e8f
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Feb 24 11:24:12 2025 -0800

    Add support to configure min GC intervals for soft and hard limits (#12450)
    
    When servers are in a high memory usage mode, the amount of times GC is
    called creates a high CPU usage which combined with a high ingest rate
    limits capability to offload existing queued data.
    
    Configuring the minimum interval even for hard limit, allows the system
    to spend some CPU cycles between GCs to offload old data from
    queues/batch processor. The most amount of data I've seen accumulated
    are blocked in the batch processor queue (incoming channel) not in the
    exporter queue.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
