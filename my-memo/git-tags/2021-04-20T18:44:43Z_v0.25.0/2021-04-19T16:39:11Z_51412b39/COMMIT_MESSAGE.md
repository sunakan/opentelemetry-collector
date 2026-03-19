commit 51412b39bab72a1e186c194dafabc2c0ddc1d0e3
Author: Jaana Dogan <jbd@amazon.com>
Date:   Mon Apr 19 09:39:11 2021 -0700

    Remove queue from the Prometheus remote write (#2951)
    
    Prometheus remote write (PWR) exporter is supporting queued retry
    out of the box, but due to the strict requirements of PWR, the queue
    causes "out of order sample" errors. The queue won't be suitable
    for Prometheus unless it has a way to shard the data by timeseries.
    
    This is not going to break the existing users because if they have
    this feature enabled, they already can't use the PRW exporter correctly.
    
    Fixes #2949.
