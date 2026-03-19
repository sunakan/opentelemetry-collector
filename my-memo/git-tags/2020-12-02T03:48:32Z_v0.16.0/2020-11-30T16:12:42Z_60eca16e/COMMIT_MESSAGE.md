commit 60eca16e8f06d353b290e50c51dfcd7c0bce5b1c
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Nov 30 11:12:42 2020 -0500

    Add metrics to Kafka exporter
    
    Add metrics otlp exporter to kafka (previously only supported traces).
    - add tests for kafka metrics exporter.
    
    **Description:**
    - The kafka exporter now supports both traces and metrics
    - Metrics is encoded as otlp proto by default (same as Traces, also the only encoding currently implemented)
    - Update the configuration of the kafka exporter to accomodate traces and metrics
      - `encoding` key specifies encoding for either metrics or traces.
      - Add default topic for metrics as `otlp_metrics`.
    
    
    **Testing:**
    - Unit tests added for metrics exporter (97.1% package cov)
    - Was able to deploy the demo set up(`/examples/demo`). Successfully received metrics and traces in a kafka consumer
    
    **Documentation:**
    
    Updated kafka exporter README to state new defaults.
    Updated CHANGELOG to reflect enhancement.
    
    Reverts open-telemetry/opentelemetry-collector#2222
