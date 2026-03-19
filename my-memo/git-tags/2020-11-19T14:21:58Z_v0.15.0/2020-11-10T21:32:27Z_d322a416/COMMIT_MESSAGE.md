commit d322a4161b8d54f23aaf0150a710b03d3fbb3a8a
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Nov 10 13:32:27 2020 -0800

    Remove legacy metrics, they were marked as legacy for ~12 months (#2105)
    
    * Remove legacy metrics, they were marked as legacy for ~12 months
    
    Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/1082
    
    This PR removes:
    - Legacy receiver/exporter metrics:
      - otelcol/receiver/received_spans
      - otelcol/receiver/dropped_spans
      - otelcol/receiver/received_timeseries
      - otelcol/receiver/dropped_timeseries
      - otelcol/exporter/received_spans
      - otelcol/exporter/dropped_spans
      - otelcol/exporter/received_timeseries
      - otelcol/exporter/dropped_timeseries
      - otelcol/exporter/received_logs
      - otelcol/exporter/dropped_logs
    - For processors remove the legacy metrics (new metrics have the same data, different names):
      - e.g. "spans_dropped" -> "processor/spans_dropped"
      - e.g. "batch_send_size_bytes" -> "processor/batch/batch_send_size_bytes"
    
    All the new metrics were enabled when using the --new-metrics flag. The PR also removes two flags:
    - "--new-metrics"
    - "--legacy-metrics"
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Update changelog
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Fix comments from review
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
