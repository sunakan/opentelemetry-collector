commit 127ea97d299255a69ebf0942b88aab944fb397bd
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Wed Jul 3 23:08:05 2019 +0530

    Added end to end test for mem ballast (#80)
    
    This commit adds an end to end test to verify performance gain acheived
    with memory ballast
    
    It mainly checks the CPU usage and does not test against memory usage.
    I'll be submitting another PR that will specifically test memory
    behaviour and ensure the ballast does not actually consume memory.
    
    `TestNoBackend10kSPS` test was very reliably consuming >20 CPU on my
    machine so I increased the accepted values to 30 for this test.
