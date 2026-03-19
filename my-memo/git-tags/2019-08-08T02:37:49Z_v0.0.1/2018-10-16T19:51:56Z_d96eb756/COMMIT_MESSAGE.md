commit d96eb75663a80672f34b7ea8326bd22431054a01
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Tue Oct 16 12:32:46 2018 -0700

    interceptor/opencensus: fix flaky Observability test
    
    The tests here unfortunately rely on the precise responses
    of the stats worker i.e. view.SetReportingPeriod
    
    However, with `go test -race`, `-race` instruments code
    to find data races and slows the application down by a bit.
    That therefore skews the expected precise timings and will
    mean that by the time we compare our results, the worker
    most likely is on the next cycle of exporting metrics which
    produces flakes such as:
    https://travis-ci.org/census-instrumentation/opencensus-service/builds/442325321
    
    This change therefore just checks to ensure that all the
    exported keys match and that the values are at least:
    len(wantTags) and still match exactly gotValues[:len(wantTags)]
