commit 9c06662859300226762c59982d63475b348a69b3
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Wed Oct 17 20:46:40 2018 -0700

    exporter/exporterparse: metrics for exported spans
    
    After each exporter has exported spans, record the
    number of spans exported with tag:
        "opencensus_exporter": <name>
    
    Updates #64
