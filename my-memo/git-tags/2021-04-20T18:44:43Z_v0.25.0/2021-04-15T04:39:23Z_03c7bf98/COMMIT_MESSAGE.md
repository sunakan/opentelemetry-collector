commit 03c7bf98f7edf6e578aac303e4d8b767f117541e
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Wed Apr 14 21:39:23 2021 -0700

    exporter/prometheusremotewriter: sort Sample by Timestamp to avoid out of order errors (#2941)
    
    Ensures that before a prompb.WriteRequest is created, that the
    TimeSeries contained have their Sample values sorted chronologically
    by Prometheus to avoid out of order errors reported by Prometheus
    barfing.
    
    Thanks to @rakyll for a reproducer and for diagnosing the problem, which
    helped distill the issue from a very complex setup that required super
    expensive Kubernetes clusters with many replicas, but essentially the problem
    became more apparently when the number of TimeSeries grew.
    
    It is important to note that the presence of such a bug signifies that
    with a large number of replicas are being scraped from, this stalls
    scraping and takes a long time which means that targets scraped in a
    round-robin fashion experience staleness when many. This might be even
    more reasons for setups to adopt a push model as opposed to scrape
    endpoints.
    
    Fixes #2315
    Fixes https://github.com/open-telemetry/wg-prometheus/issues/10
