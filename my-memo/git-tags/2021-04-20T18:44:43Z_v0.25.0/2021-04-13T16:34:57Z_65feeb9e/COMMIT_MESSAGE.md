commit 65feeb9eaae5b490cbdc2cb47de25d99958bae50
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Tue Apr 13 09:34:57 2021 -0700

    exporter/prometheusexporter: support Summary (#2900)
    
    Allows Summary metrics to be exported to Prometheus.
    To walk through this feature, I created an adaptation of a Brian Brazil
    tutorial for DropWizard, to create a Java server at
    https://github.com/odeke-em/bugs/tree/master/opentelemetry-collector/2661
    and it uses DropWizard, and exports out JVM statistics with Prometheus where the
    *gc_collection_seconds are of the summary kind when scraped by visiting
    http://localhost:1234/metrics which produced
    
    ```
     # HELP jvm_gc_collection_seconds Time spent in a given JVM garbage collector in seconds.
     # TYPE jvm_gc_collection_seconds summary
     jvm_gc_collection_seconds_count{gc="G1 Young Generation",} 4.0
     jvm_gc_collection_seconds_sum{gc="G1 Young Generation",} 0.026
     jvm_gc_collection_seconds_count{gc="G1 Old Generation",} 0.0
    ```
    
    and then roundtripped the collector to scrape those metrics and then
    export them to Prometheus
    
        VS
    
    making Prometheus directly scrape that endpoint and then comparing
    results.
    
    Also added an end to end test to ensure that a mock DropWizard server
    which produces JVM statistics can be scraped by the Prometheus receiver,
    which will feed metrics to an active Prometheus exporter, and then we
    scrape from the Prometheus exporter to ensure that the summary metrics
    are written out and that they make sense.
    
        DropWizard -> Prometheus Receiver -> Prometheus Exporter -> HTTP scrape + Verify
    
    Fixes #2661
