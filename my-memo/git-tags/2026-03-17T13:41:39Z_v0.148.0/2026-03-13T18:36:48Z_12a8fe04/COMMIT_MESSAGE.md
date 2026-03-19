commit 12a8fe04c9057d6d3c62903ae70b3cea01e5dec5
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Fri Mar 13 11:36:48 2026 -0700

    [cmd/mdatagen] [chore] Rename per-metric config types to include Metric infix (#14764)
    
    Follow up to
    https://github.com/open-telemetry/opentelemetry-collector/pull/14724. No
    need for chanagelog item if merged before the release
    
    Rename generated types for per-metric reaggregation config to make the
    category explicit and avoid future name collisions:
    
    - `{MetricName}Config` -> `{MetricName}MetricConfig`
    - `{MetricName}AttributeKey` -> `{MetricName}MetricAttributeKey`
    
    For example, for the `system.cpu.frequency` metric:
    - `SystemCPUFrequencyConfig` -> `SystemCPUFrequencyMetricConfig`
    - `SystemCPUFrequencyAttributeKey` ->
    `SystemCPUFrequencyMetricAttributeKey`
