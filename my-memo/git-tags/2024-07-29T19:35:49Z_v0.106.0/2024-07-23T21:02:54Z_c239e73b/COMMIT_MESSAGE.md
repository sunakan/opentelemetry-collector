commit c239e73bbb83aec650866e15dcae3792d9b7279d
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Jul 23 14:02:54 2024 -0700

    [exporterhelper] Add data_type attribute to internal queue metrics (#10593)
    
    Add `data_type` attribute to the internal otelcol_exporter_queue_size
    metric to report the type of data being processed.
    
    All other metrics have the data type reported as part of their names. We
    could've done the same for queue metrics, but that would introduce a
    significant breaking change. We want to avoid that until we have all the
    metrics standardized with OpenTelemetry semantic conventions.
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/9943
