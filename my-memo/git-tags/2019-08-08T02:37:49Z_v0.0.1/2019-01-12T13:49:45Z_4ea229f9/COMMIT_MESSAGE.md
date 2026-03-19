commit 4ea229f9e3bd3b87ff58d09e684842d6f058632b
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Sat Jan 12 16:06:19 2019 +0300

    exporter/prometheus: fix nil deference when no Prometheus exporter
    
    An embarassing crash would occur if in YAML, exporters were specified
    and perhaps the Prometheus clause was started but had no content e.g.
    ```yaml
    exporters:
       prometheus:
    ```
    
    This change fixes that by explicitly returning nil early, but also
    added a test to ensure we never regress.
