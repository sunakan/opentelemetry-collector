commit 0a63747d0f82658d5f2b4f89a34b952b0fb96acc
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Aug 28 08:32:32 2023 -0700

    [chore] Fix checkValueForProducer test helper for queue metrics (#8288)
    
    `checkValueForProducer` test helper assumes that every OC metric has
    only one timeseries. But, since the queue metrics are defined globally,
    they accumulate more timeseries with different labels from different
    tests. This change removes that assumption. It allows having more tests
    for the exporter queue without breaking
    TestQueuedRetry_QueueMetricsReported.
    
    Ideally, we should avoid defining instruments globally or clear them up
    after each test. The first option would require passing the OpenCensus
    registry in as a public field of TelemetrySettings from the service
    start. The second option would require a bigger refactoring.
    
    I think we can allow several tests emitting datapoints for the global
    instruments for now until we migrate to OTel metrics.
    
    Fixes tests failing in
    https://github.com/open-telemetry/opentelemetry-collector/pull/8250
