commit 7c982345763f963f9fecf65423096b18890696e6
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Apr 5 16:07:40 2023 -0700

    [exporter/logging] Show more counters in not detailed verbosity (#7461)
    
    Currently we show number
    - log records which are written with confusing label #logs
    - spans
    - metrics which is a counter that is not consistent with other places (e.g. batch processor) where we count data points instead.
    
    This change adds resource metrics/logs/spans and data point counter with consistent label naming to non detailed verbosity output.
