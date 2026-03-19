commit 992782dcc41416a8d045ff30baf69114497857ab
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Jun 8 14:00:51 2022 -0700

    Use opencensus metric package for process metrics (#5486)
    
    * Use opencensus metric package for process metrics
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Avoid reading MemStats too often
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Make ProcessMetrics private
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Add changelog entry
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Add tests for failing to register metrics
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
