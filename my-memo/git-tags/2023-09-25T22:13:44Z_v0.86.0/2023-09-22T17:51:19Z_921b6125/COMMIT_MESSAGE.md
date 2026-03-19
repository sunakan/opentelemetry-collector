commit 921b6125f017e4c2ba839f22208506355b1a8cc8
Author: Alex Boten <aboten@lightstep.com>
Date:   Fri Sep 22 10:51:19 2023 -0700

    deprecate To*CreateSettings methods in `obsreporttest.TestTelemetry` (#8501)
    
    These methods create an import cycle when trying to move obsreporttest
    to
    componenttest. Deprecating these methods will allow us to remove them in
    the next version and move the remaining code into componenttest
    
    Fixes #8492
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
