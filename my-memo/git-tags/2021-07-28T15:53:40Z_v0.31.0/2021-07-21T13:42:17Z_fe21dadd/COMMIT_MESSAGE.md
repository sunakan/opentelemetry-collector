commit fe21dadd5976c54f00fc179a6e8155ed02bd9948
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Wed Jul 21 06:42:17 2021 -0700

    exporter/prometheusremotewrite: add a WAL implementation without wiring it up (#3597)
    
    Split off from PR #3017, as requested to firstly add the implementation
    unwired to the exporter itself to help the reviewers easily understand
    
    Uses an off the shelf WAL implementation to add capabilities
    to the Prometheus remote exporter using github.com/tidwall/wal.
    
    By default the WAL will be on and to configure the WAL location,
    please use this prometheusremotewrite exporter YAML configuration:
    
    ```yaml
    exporters:
      prometheusremotewrite:
        endpoint: "http://some.url:9411/api/prom/push"
        wal:
            directory: ./waldir/wal_directory
            truncate_frequency: 200s
            cache_size: 300
    ```
    
    whose fields are quite similar to Prometheus' WAL fields per
    
        https://docs.google.com/document/d/1cCcoFgjDFwU2n823tKuMvrIhzHty4UDyn0IcfUHiyyI/edit#heading=h.mlf37ibqjgov
    
    We are using an off-the-shelf WAL because:
    By the time that we get OTLP metrics, we can convert to Prometheus proto,
    but trying to implement the Prometheus storage interfaces would involve
    either by-passing to-Prometheus-Proto and then save to Prometheus raw Go,
    then retrieve Prometheus raw Go and then convert to Prometheus Proto.
    It is much easier to get an off the shelf WAL implementation and add
    it to the Prometheus implementation.
    
    The next PR after this one will involve hooking it into the actual
    Prometheus Remote Write exporter.
    
    Updates open-telemetry/wg-prometheus#9
