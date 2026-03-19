commit 6312e62ea4ab0e1ea7d254282e5dd131c4dd9ba1
Author: Alex Boten <aboten@lightstep.com>
Date:   Tue May 23 15:12:47 2023 -0700

    add benchmark test for multi batch processing (#7717)
    
    * add benchmark test for multi batch processing
    
    This refactors the batch processor tests to make testing multiple configuration
    scenarios easier. It adds a testcase for a batch processor w/ metadata keys.
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
    
    * use RunParallel
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
