commit 6d44f0d3035b24565e5629a9059e77f899e922b9
Author: kisieland <danielgutowski@google.com>
Date:   Wed Jun 2 16:52:24 2021 +0200

    Make the batch processor limit data points rather than metrics. (#3141)
    
    **Link to tracking Issue:** #2754
    
    This change introduces a BenchmarkBatchMetricProcessor that stress tests batching logic.
    Results before:
    `BenchmarkBatchMetricProcessor-12           20000             80614 ns/op`
    Results after the change:
    `BenchmarkBatchMetricProcessor-12           20000             96184 ns/op`
