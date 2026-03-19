commit adb9413a0f33c8a364b74773504fd903efa0084b
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Tue Oct 31 09:25:32 2023 -0700

    [chore] avoid negative waitGroup in test (#8783)
    
    When sending a retry, make sure to do so inside the run function of the
    observability sender. Otherwise, tests may produce a negative wait group
    error when we start to enforce shutdown of the queues.
