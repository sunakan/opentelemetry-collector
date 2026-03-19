commit 3b50b38d396e9275bc94dba0e8b8ea83e7948961
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Fri Sep 13 13:07:15 2024 -0700

    [processorhelper] report signal as attribute on incoming/outgoing items (#11144)
    
    This updating the existing metric points that were recently added to use
    signal as an attribute instead of separating the metric name. It follows
    the suggestions in [otep
    259](https://github.com/open-telemetry/oteps/pull/259) for the metric
    and attribute names.
    
    Putting this in draft to get some feedback from @djaglowski before
    moving forward with this change
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
