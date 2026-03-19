commit 6367e64fccde436549cc1d7161519c750b4d6a3f
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Fri Sep 21 01:25:37 2018 -0700

    trace/interceptor: implement OpenCensus interceptor
    
    Implemented the OpenCensus interceptor that
    opencensus-agent-exporters in the various languages
    will send traces to. It is initialized with at least
    a non-nil spanreceiver.SpanReceiver.
    
    I also added an end-to-end test to ensure that traces
    are properly proxied to the spanreceiver.SpanReceiver.
    
    Fixes #32
