commit 489e47829b5bfbf5171d3582829b7f603b968126
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Dec 12 16:02:55 2022 -0800

    Move shutdown telemetry to Service (#6765)
    
    This removes any "private" dependency between Collector and Service and will allow to move collector to otelcol per the deprecation notice.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
