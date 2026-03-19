commit 5e019a79992bffc9b2699467bb17d3ea0ec79f22
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Apr 22 14:27:42 2020 -0700

    Fix flaky test TestBatchProcessorSentByTimeout (#861)
    
    Elapsed time measurement was set incorrectly. Timeout to compare elapsed time against is triggered with newBatchProcessor, move it below the timer start.
