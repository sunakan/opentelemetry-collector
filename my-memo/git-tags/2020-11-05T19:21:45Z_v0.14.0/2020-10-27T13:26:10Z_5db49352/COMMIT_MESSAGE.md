commit 5db4935209c2e3615b9edd68bd5f5584c94a004c
Author: Ben Keith <benkeith@splunk.com>
Date:   Tue Oct 27 09:26:10 2020 -0400

    Simple Metrics Helper (#1540)
    
    This facilitates adding metrics to a pdata.Metrics in receivers.  It is
    meant to be much easier and more fluent than than using pdata.Metrics
    directly. All of the methods on it will return the same instance of
    simple.Metrics as a return value, allowing you to chain method calls easily.
    
    This is designed for cases where receivers are generating metrics from
    scratch, where generally you will have a single datapoint per
    metric/label combination.  It is not meant for high-volume appliations
    where performance matters.
    
    Also added a thread-safe version called SafeMetrics that can be
    created from a normal builder with the AsSafe method.
