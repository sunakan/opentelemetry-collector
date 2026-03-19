commit 0a8a1dce58dd4b13b2694668c73bcc9eee12d712
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Feb 25 09:19:16 2021 -0800

    Cleanup usage of TimestampUnixNanos and its API (#2549)
    
    Updates https://github.com/open-telemetry/opentelemetry-collector/issues/2488
    
    Important Changes:
    
    * Rename pdata.TimestampUnixNanos to pdata.Timestamp
    * Remove pdata.TimestampUnixNanos and helpers, move them of the pdata.Timestamp type.
    * Fix bug around IsZero, this function should return true if the time is January 1, year 1, 00:00:00 UTC not epoch.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
