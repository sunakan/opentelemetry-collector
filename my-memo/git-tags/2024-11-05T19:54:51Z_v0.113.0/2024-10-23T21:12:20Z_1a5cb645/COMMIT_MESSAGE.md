commit 1a5cb6450f7bd6d4b2fb6535776790678e134e43
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Wed Oct 23 14:12:20 2024 -0700

    [chore] clean up duplicated test (#11530)
    
    This test wasn't testing any new behaviour since similar config was used
    in both test cases. Removed the duplicate and updated
    `getMetricsFromPrometheus` to not require a handler anymore. This will
    be useful when updating the code with the new upstream config package.
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
