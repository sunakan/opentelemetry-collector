commit 1f7c62d8855cac0e6c1c2da6fd64d6c4add35b0e
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Sun Jan 6 23:08:37 2019 +0300

    exporter/metrics: add Prometheus metrics exporter
    
    Added a Prometheus metrics exporter that allows
    us to export metrics.
    Its configuration is available under YAML field option
    ```yaml
    exporters
        prometheus:
            <key>: <value>
    ```
    where <key> could be any of
    
    * address -- the address on which to run the Prometheus
    scrape endpoint /metrics on
    
    * const_labels -- labels that will be applied to each
    metric that is exported
    
    * namespace -- optionally if defined records metrics
    under a specific namespace, leave it blank to preserve
    the names of the proxied metrics (if that's the case)
    
    This change uses the Prometheus metrics exporter
    at github.com/orijtech/prometheus-go-metrics-exporter
    which will be handed over to the OpenCensus community
    whenever a repository is created under the
    "census-ecosystem" organization.
    
    Fixes #292
