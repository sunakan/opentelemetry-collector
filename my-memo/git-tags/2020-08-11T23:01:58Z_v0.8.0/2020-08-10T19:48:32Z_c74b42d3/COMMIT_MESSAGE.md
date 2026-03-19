commit c74b42d3b7b3eba0d2fc036be5f441068a74f739
Author: Weil0ng <cuiwl@google.com>
Date:   Mon Aug 10 12:48:32 2020 -0700

    Adds a new config StartTimeMetricRegex (#1511)
    
    Previously the prometheus receiver only accepts
    `process_start_time_metric` as the start time when UseStartTimeMetric is
    set. For applications that export similar metrics but with a prefix,
    e.g., via NewProcessCollector(namespace), the receiver would drop such
    metrics.
    By adding StartTimeMetricRegex, at least we will be able to cover such
    use cases.
