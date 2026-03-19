commit a19848f8c9f85016f267f1ee3052db1f2720b74b
Author: Paulo Janotti <paulo@omnition.io>
Date:   Mon Mar 11 06:36:19 2019 -0700

    Fix test checking idToTrace map used in tail sampling (#486)
    
    The test seems to have been running in sequence on most (all?) of Travis runs: it makes assumptions about which traces will be present on idToTrace map and that is not possible when traces are added concurrently since there are no guarantees about the insertion order.
    
    Fixed the concurrent test and added a sequential test in which the ids that are expected to have been dropped can be actually validated.
