commit c64ac69dacdc9c1dc2c8c0e47e8ffdbe5464f295
Author: Curtis Robert <crobert@splunk.com>
Date:   Wed Jan 3 19:26:27 2024 -0800

    [chore] Enable goleak for tests failing on opencensus-go (#9210)
    
    **Description:**
    As described
    [here](https://github.com/open-telemetry/opentelemetry-collector/issues/9165#issuecomment-1874732291)
    and
    [here](https://github.com/open-telemetry/opentelemetry-collector/issues/9165#issuecomment-1874836336),
    there are quite a few packages that directly or indirectly import the
    [OpenCensus-go stats
    package](https://pkg.go.dev/go.opencensus.io/stats). Within the
    [stats/view
    package](https://pkg.go.dev/go.opencensus.io@v0.24.0/stats/view) there's
    an init() function that starts goroutines that aren't cleaned up. This
    causes goleak to fail.
    
    Since the failure is caused by OpenCensus always indirectly (from what I
    can tell), and OpenCensus is now read-only, I believe it's fair to
    ignore leaks caused by this dependency and specific leaking situation.
    
    **Link to tracking Issue:** <Issue number if applicable>
    #9165
    
    **Testing:**
    All added tests are passing
