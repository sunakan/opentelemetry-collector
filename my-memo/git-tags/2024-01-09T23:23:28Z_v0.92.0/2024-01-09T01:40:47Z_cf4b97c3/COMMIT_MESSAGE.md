commit cf4b97c3c3dceb3689ff6df4a5319aa6c9536d41
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Jan 8 17:40:47 2024 -0800

    [chore] [exporterhelper] Make memory queue benchmarks deteministic (#9247)
    
    Ensure the queue always has enough capacity to make the benchmark
    results deterministic. Otherwise, it's unpredictable when the queue
    starts rejecting the new entries. It depends on how fast it processes
    them, which can significantly fluctuate.
    
    Also, remove the multiple consumers use cases from benchmarks as
    redundant. Not sure they provide any value.
