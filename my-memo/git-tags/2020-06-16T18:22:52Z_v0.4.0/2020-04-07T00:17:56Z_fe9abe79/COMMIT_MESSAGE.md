commit fe9abe793c2c36e49d24e8ee45ecfb301c1da64b
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Apr 6 17:17:56 2020 -0700

    Fix metric/spans count, add tests for nil entries in the slices (#787)
    
    * Handle correctly nil Resource[Spans|Metrics], InstrumentationLibrary[Spans|Metrics], Span|Metric, MetricDataPoints.
    * Found a bug that the OTLP MetricDescriptor.Labels were ignored in Internal->OC
    * Rename translator/internaldata/{oc_testdata.go => oc_testdata_test.go} to not count these lines in coverage.
    
    Work left for slices:
    * Tests and fixes for nil Events, Links, Buckets, ValueAtPercentile
    
    Work left for maps:
    * Define what should be the behavior if a nil entry in the "slice map representation".
    * Add tests for these cases.
