commit 52c914dd489079f7100e74e6f5dc4c1290a39714
Author: Joshua MacDonald <jmacd@users.noreply.github.com>
Date:   Tue Feb 6 09:53:46 2024 -0800

    Treat PartialSuccess as Success (#9260)
    
    Changes the treatment of
    [PartialSuccess](https://opentelemetry.io/docs/specs/otlp/#partial-success),
    making them successful and logging a warning instead of returning an
    error to the caller. These responses are meant to convey successful
    receipt of valid data which could not be accepted for other reasons,
    specifically to cover situations where the OpenTelemetry SDK and
    Collector have done nothing wrong, specifically to avoid retries. While
    the existing OTLP exporter returns a permanent error (also avoids
    retries), it makes the situation look like a total failure when in fact
    it is more nuanced.
    
    As discussed in the tracking issue, it is a lot of work to propagate
    these "partial" successes backwards in a pipeline, so the appropriate
    simple way to handle these items is to return success.
    
    In this PR, we log a warning. In a future PR, (IMO) as discussed in
    https://github.com/open-telemetry/oteps/pull/238, we should count the
    spans/metrics/logs that are rejected in this way using a dedicated
    outcome label.
    
    **Link to tracking Issue:**
    Part of #9243
    
    **Testing:** Tests for the "partial success" warning have been added.
    
    **Documentation:** PartialSuccess behavior was not documented. Given the
    level of detail in the README, it feels appropriate to continue not
    documenting, otherwise lots of new details should be added.
    
    ---------
    
    Co-authored-by: Alex Boten <aboten@lightstep.com>
