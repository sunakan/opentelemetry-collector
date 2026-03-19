commit fcb7012fc292a7708c92bad50d8f25eb81745453
Author: Alex Boten <aboten@lightstep.com>
Date:   Fri Dec 1 12:21:13 2023 -0800

    [service] add resource attributes as labels to otel metrics (#9029)
    
    This ensures backwards compatibility with OpenCensus metrics.
    
    ### Collector metrics with OpenCensus:
    
    ```
    # HELP otelcol_exporter_queue_capacity Fixed capacity of the retry queue (in batches)
    # TYPE otelcol_exporter_queue_capacity gauge
    otelcol_exporter_queue_capacity{exporter="otlp",service_instance_id="e46d41fd-810a-4685-82d0-b01e177cfe7b",service_name="otelcorecol",service_version="0.90.0-dev"} 1000
    # HELP otelcol_exporter_queue_size Current size of the retry queue (in batches)
    # TYPE otelcol_exporter_queue_size gauge
    otelcol_exporter_queue_size{exporter="otlp",service_instance_id="e46d41fd-810a-4685-82d0-b01e177cfe7b",service_name="otelcorecol",service_version="0.90.0-dev"} 0
    # HELP otelcol_process_cpu_seconds Total CPU user and system time in seconds
    # TYPE otelcol_process_cpu_seconds counter
    otelcol_process_cpu_seconds{service_instance_id="e46d41fd-810a-4685-82d0-b01e177cfe7b",service_name="otelcorecol",service_version="0.90.0-dev"} 0.03
    # HELP otelcol_process_memory_rss Total physical memory (resident set size)
    # TYPE otelcol_process_memory_rss gauge
    otelcol_process_memory_rss{service_instance_id="e46d41fd-810a-4685-82d0-b01e177cfe7b",service_name="otelcorecol",service_version="0.90.0-dev"} 2.70336e+07
    # HELP otelcol_process_runtime_heap_alloc_bytes Bytes of allocated heap objects (see 'go doc runtime.MemStats.HeapAlloc')
    # TYPE otelcol_process_runtime_heap_alloc_bytes gauge
    otelcol_process_runtime_heap_alloc_bytes{service_instance_id="e46d41fd-810a-4685-82d0-b01e177cfe7b",service_name="otelcorecol",service_version="0.90.0-dev"} 2.445496e+06
    # HELP otelcol_process_runtime_total_alloc_bytes Cumulative bytes allocated for heap objects (see 'go doc runtime.MemStats.TotalAlloc')
    # TYPE otelcol_process_runtime_total_alloc_bytes counter
    otelcol_process_runtime_total_alloc_bytes{service_instance_id="e46d41fd-810a-4685-82d0-b01e177cfe7b",service_name="otelcorecol",service_version="0.90.0-dev"} 3.96812e+06
    # HELP otelcol_process_runtime_total_sys_memory_bytes Total bytes of memory obtained from the OS (see 'go doc runtime.MemStats.Sys')
    # TYPE otelcol_process_runtime_total_sys_memory_bytes gauge
    otelcol_process_runtime_total_sys_memory_bytes{service_instance_id="e46d41fd-810a-4685-82d0-b01e177cfe7b",service_name="otelcorecol",service_version="0.90.0-dev"} 1.3601808e+07
    # HELP otelcol_process_uptime Uptime of the process
    # TYPE otelcol_process_uptime counter
    otelcol_process_uptime{service_instance_id="e46d41fd-810a-4685-82d0-b01e177cfe7b",service_name="otelcorecol",service_version="0.90.0-dev"} 22.446733
    ```
    
    ### Collector metrics w/ `useOtelForInternalMetrics` before my this
    change
    
    ```
    # HELP otelcol_exporter_queue_capacity Fixed capacity of the retry queue (in batches)
    # TYPE otelcol_exporter_queue_capacity gauge
    otelcol_exporter_queue_capacity{exporter="otlp"} 1000
    # HELP otelcol_exporter_queue_size Current size of the retry queue (in batches)
    # TYPE otelcol_exporter_queue_size gauge
    otelcol_exporter_queue_size{exporter="otlp"} 0
    # HELP otelcol_process_cpu_seconds Total CPU user and system time in seconds
    # TYPE otelcol_process_cpu_seconds counter
    otelcol_process_cpu_seconds 0.06
    # HELP otelcol_process_memory_rss Total physical memory (resident set size)
    # TYPE otelcol_process_memory_rss gauge
    otelcol_process_memory_rss 2.9605888e+07
    # HELP otelcol_process_runtime_heap_alloc_bytes Bytes of allocated heap objects (see 'go doc runtime.MemStats.HeapAlloc')
    # TYPE otelcol_process_runtime_heap_alloc_bytes gauge
    otelcol_process_runtime_heap_alloc_bytes 3.42064e+06
    # HELP otelcol_process_runtime_total_alloc_bytes Cumulative bytes allocated for heap objects (see 'go doc runtime.MemStats.TotalAlloc')
    # TYPE otelcol_process_runtime_total_alloc_bytes counter
    otelcol_process_runtime_total_alloc_bytes 4.931072e+06
    # HELP otelcol_process_runtime_total_sys_memory_bytes Total bytes of memory obtained from the OS (see 'go doc runtime.MemStats.Sys')
    # TYPE otelcol_process_runtime_total_sys_memory_bytes gauge
    otelcol_process_runtime_total_sys_memory_bytes 1.2815376e+07
    # HELP otelcol_process_uptime Uptime of the process
    # TYPE otelcol_process_uptime counter
    otelcol_process_uptime 21.149825
    # HELP target_info Target metadata
    # TYPE target_info gauge
    target_info{service_instance_id="6ca6db28-5a67-419b-8f0a-a486bba59833",service_name="otelcorecol",service_version="0.90.0-dev"} 1
    ```
    
    ### With the change in this PR and using `useOtelForInternalMetrics`
    
    ```
    # HELP otelcol_exporter_queue_capacity Fixed capacity of the retry queue (in batches)
    # TYPE otelcol_exporter_queue_capacity gauge
    otelcol_exporter_queue_capacity{exporter="otlp",service_instance_id="40f4a782-e5ee-47e1-acd0-17cb90bd16f1",service_name="otelcorecol",service_version="0.90.0-dev"} 1000
    # HELP otelcol_exporter_queue_size Current size of the retry queue (in batches)
    # TYPE otelcol_exporter_queue_size gauge
    otelcol_exporter_queue_size{exporter="otlp",service_instance_id="40f4a782-e5ee-47e1-acd0-17cb90bd16f1",service_name="otelcorecol",service_version="0.90.0-dev"} 0
    # HELP otelcol_process_cpu_seconds Total CPU user and system time in seconds
    # TYPE otelcol_process_cpu_seconds counter
    otelcol_process_cpu_seconds{service_instance_id="40f4a782-e5ee-47e1-acd0-17cb90bd16f1",service_name="otelcorecol",service_version="0.90.0-dev"} 0.03
    # HELP otelcol_process_memory_rss Total physical memory (resident set size)
    # TYPE otelcol_process_memory_rss gauge
    otelcol_process_memory_rss{service_instance_id="40f4a782-e5ee-47e1-acd0-17cb90bd16f1",service_name="otelcorecol",service_version="0.90.0-dev"} 2.7508736e+07
    # HELP otelcol_process_runtime_heap_alloc_bytes Bytes of allocated heap objects (see 'go doc runtime.MemStats.HeapAlloc')
    # TYPE otelcol_process_runtime_heap_alloc_bytes gauge
    otelcol_process_runtime_heap_alloc_bytes{service_instance_id="40f4a782-e5ee-47e1-acd0-17cb90bd16f1",service_name="otelcorecol",service_version="0.90.0-dev"} 2.450768e+06
    # HELP otelcol_process_runtime_total_alloc_bytes Cumulative bytes allocated for heap objects (see 'go doc runtime.MemStats.TotalAlloc')
    # TYPE otelcol_process_runtime_total_alloc_bytes counter
    otelcol_process_runtime_total_alloc_bytes{service_instance_id="40f4a782-e5ee-47e1-acd0-17cb90bd16f1",service_name="otelcorecol",service_version="0.90.0-dev"} 3.97064e+06
    # HELP otelcol_process_runtime_total_sys_memory_bytes Total bytes of memory obtained from the OS (see 'go doc runtime.MemStats.Sys')
    # TYPE otelcol_process_runtime_total_sys_memory_bytes gauge
    otelcol_process_runtime_total_sys_memory_bytes{service_instance_id="40f4a782-e5ee-47e1-acd0-17cb90bd16f1",service_name="otelcorecol",service_version="0.90.0-dev"} 1.3339664e+07
    # HELP otelcol_process_uptime Uptime of the process
    # TYPE otelcol_process_uptime counter
    otelcol_process_uptime{service_instance_id="40f4a782-e5ee-47e1-acd0-17cb90bd16f1",service_name="otelcorecol",service_version="0.90.0-dev"} 3.938331
    # HELP target_info Target metadata
    # TYPE target_info gauge
    target_info{service_instance_id="40f4a782-e5ee-47e1-acd0-17cb90bd16f1",service_name="otelcorecol",service_version="0.90.0-dev"} 1
    ```
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
