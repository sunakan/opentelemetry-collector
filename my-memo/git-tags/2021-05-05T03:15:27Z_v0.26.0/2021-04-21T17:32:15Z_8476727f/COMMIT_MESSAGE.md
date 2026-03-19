commit 8476727fcfaedb334dee5710371ab295bc4cae3e
Author: Jaana Dogan <jbd@amazon.com>
Date:   Wed Apr 21 10:32:15 2021 -0700

    Enable the queue for the Prometheus Remote Write Exporter internally (#2974)
    
    * Enable queue for the Prometheus Remote Write Exporter internally
    
    This is a follow up to #2951.
    
    When we disable the queue completely, it causes the export to happen
    not in a consumer goroutine. Enable the queue internally that export
    gets its own goroutine not to block the entire collector pipeline.
    
    * Set a default queue size
