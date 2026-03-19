commit a3c0565031b046cd97a339ee5cc4b35e540fa4c4
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Wed Sep 18 12:33:45 2024 -0700

    [processorhelper] deprecated accepted/refused/dropped metrics (#11201)
    
    These were only used by the memory limiter processor and were never
    automatically calculated by the processorhelper. It's better to move
    them to processor specific metrics that can be managed within the
    component itself.
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
