commit 5b475036e3bbcfe9c5f31a443a0196126194d225
Author: Jan Garaj <info@monitoringartist.com>
Date:   Tue Aug 15 20:36:14 2023 +0100

    Update troubleshooting.md - Grafana dashboard link (#8133)
    
    Updated Grafana dashboard link. Old dashboard was not updated for
    3+years. I linked "my" dashboard, which is published also in the
    [repo](https://github.com/monitoringartist/opentelemetry-collector-monitoring),
    so users may contribute and improve it easily.
    
    Dashboard has structure - horizontal by receivers/processors/exporters,
    vertical by traces/metrics/logs + process metrics. It is trying to be
    generic, no distro/component specific.
