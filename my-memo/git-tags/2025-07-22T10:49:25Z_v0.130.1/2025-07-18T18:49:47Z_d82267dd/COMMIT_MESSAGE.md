commit d82267dd69528803eef4590ad732091e031d2f28
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Jul 18 20:49:47 2025 +0200

    Downgrade otel-go (#13429)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Downgrades opentelemetry-go dependencies effectively reverting #13289
    and others
    
    ### ❗ Known Issues ❗
    
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
    
    ---------
    
    Signed-off-by: alex boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: alex boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: Yang Song <songy23@users.noreply.github.com>
