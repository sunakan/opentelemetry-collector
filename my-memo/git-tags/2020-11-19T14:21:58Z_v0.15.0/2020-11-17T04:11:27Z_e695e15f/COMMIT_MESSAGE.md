commit e695e15f94a0807ac1d71f903486dcd01d3b4424
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Nov 16 23:11:27 2020 -0500

    Remove level from all the MetricViews calls (#2149)
    
    This is a preparation for enabling per component telemetry level:
    * Views are global and they must always be installed; they are no-op if nobody records data;
    * Views are global and they must always contain all the labels; In case of measurements being recorded without one of the labels (for perfomance reasons)
      the extra label defined does not have impact, because all the timeseries will have that label as "null" (missing).
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
