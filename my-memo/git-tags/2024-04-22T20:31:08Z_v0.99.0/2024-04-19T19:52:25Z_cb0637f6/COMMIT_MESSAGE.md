commit cb0637f6c46b434854d782113cf88da2208148e8
Author: David Ashpole <dashpole@google.com>
Date:   Fri Apr 19 15:52:25 2024 -0400

    Support metric.metadata in pdata/pmetric (#10006)
    
    #### Description
    
    After
    https://github.com/open-telemetry/opentelemetry-collector/pull/9985, add
    support for the new metric.metadata field in the pmetric package.
    
    I plan to use the metric.metadata field to support additional prometheus
    types per
    https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/compatibility/prometheus_and_openmetrics.md#metric-metadata
