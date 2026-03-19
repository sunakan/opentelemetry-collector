commit 904c6ad4ec93d9e9df8dafc5fcad8b48d5457dde
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Sat Jan 26 15:00:24 2019 -0800

    go.{mod, sum}: update Prometheus Metrics exporter to v0.0.2
    
    Bring in fix
        https://github.com/orijtech/prometheus-go-metrics-exporter/pull/2
    
    which sanitizes tag keys, like the OpenCensus Prometheus Go exporter
    does.
