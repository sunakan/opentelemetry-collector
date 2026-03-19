commit 59b5328782c9a1ce197c336fa38b0bbc1d21ab16
Author: Yang Song <songy23@users.noreply.github.com>
Date:   Wed Jul 23 12:16:50 2025 -0400

    Downgrade otel-go (#13429) (#13466)
    
    cherry-pick of
    https://github.com/open-telemetry/opentelemetry-collector/commit/d82267dd69528803eef4590ad732091e031d2f28
    
    `go.opentelemetry.io/otel/exporters/prometheus v0.59.1` does not fully
    fix the metric name issue so we have to revert to v0.58.0
    
    Downgrades opentelemetry-go dependencies effectively reverting #13289
    and others
    
    - Due to a
    [bug](https://github.com/open-telemetry/opentelemetry-go/issues/7039) in
    the prometheus exporter, if you are configuring a prometheus exporter,
    the collector's internal metrics will be emitted with an unexpected
    suffix in its name. For example, the metric
    `otelcol_exporter_sent_spans__spans__total` instead of
    `otelcol_exporter_sent_spans_total`. The workaround is to manually
    configure `without_units: true` in your prometheus exporter config
    
     ```yaml
      service:
        telemetry:
          metrics:
            readers:
              - pull:
                  exporter:
                    prometheus:
                      host: 0.0.0.0
                      port: 8888
                      without_units: true
     ```
    
    If you are using the collector's default Prometheus exporter for
    exporting internal metrics you are unaffected.
    
    Signed-off-by: alex boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
    Co-authored-by: alex boten <223565+codeboten@users.noreply.github.com>
