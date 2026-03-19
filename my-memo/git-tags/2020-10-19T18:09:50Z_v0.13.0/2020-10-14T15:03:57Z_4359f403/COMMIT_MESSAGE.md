commit 4359f4031f7a033e6545bbf11e27ad682545c8d0
Author: Nail Islamov <nilebox@users.noreply.github.com>
Date:   Thu Oct 15 02:03:57 2020 +1100

    Log when dropping metrics due to missing process_start_time_seconds (#1921)
    
    Report error via obsreport.EndMetricsReceiveOp and return error in transaction Commit()
    
    Fixes #969
