commit 2b33474ca3337186f01ea6f73cb65eb37b575fdf
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Wed Oct 17 00:33:59 2018 -0700

    interceptor/opencensus: skip TestEnsureRecordedMetrics
    
    `go test -race` produces a slowdown in the program by
    between 2-20X yet this test depends on precise timings
    in the OpenCensus-Go stats worker. Disable it as it is
    very flaky and causing unrelated failures in PRs.
