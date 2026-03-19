commit 42a7f662b050138f589e16233e393ab71e051374
Author: Damola Shomoye <dshomoye@users.noreply.github.com>
Date:   Fri Nov 27 08:57:04 2020 -0800

    Add metrics to Kafka exporter (#1966)
    
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
