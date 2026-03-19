commit 5257ff0f0f7fb667cf40d63025b98950aba81542
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Sat Aug 29 11:24:20 2020 -0700

    Fix flaky test TestOCToMetrics_ResourceInMetric (#1670)
    
    Use only one resource label to avoid ordering issues in the resource labels list.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
