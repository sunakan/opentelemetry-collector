commit d545fb6a102caf06d3b15d2dba5e652bcbb000d4
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Jul 8 08:23:16 2024 -0700

    [exporterhelper] Fix incorrect deduplication of exporter queue metrics (#10550)
    
    Fix incorrect deduplication of otelcol_exporter_queue_size and
    otelcol_exporter_queue_capacity metrics if multiple exporters are used.
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10444
    
    The registered callbacks are ignored for now, which is the same behavior
    as before. Ideally, we would need to unregister them properly.
