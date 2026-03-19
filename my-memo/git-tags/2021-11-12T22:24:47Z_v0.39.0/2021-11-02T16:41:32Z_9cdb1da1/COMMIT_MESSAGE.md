commit 9cdb1da1c45d8df52086ccf23f5bf03f9258851e
Author: Alex Boten <aboten@lightstep.com>
Date:   Tue Nov 2 09:41:32 2021 -0700

    [test] fixing flaky TestBatchMetricsProcessor_Timeout (#4339)
    
    The batch size was 100 and the number of datapoints being generated was also 100 so at times, the batch processor would be sending the data before the timeout was reached, which is what this particular test is trying to test. To fix this, I'm increasing the batch send size to 101.
