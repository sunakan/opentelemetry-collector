commit 94066e4c70c110a8906cfb647fc6a183a39cabfb
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed Dec 11 09:56:02 2019 -0500

    Add metrics support to Testbed (#455)
    
    Previously the Testbed only supported trace testing. This adds metric
    support to the Testbed.
    
    Split TraceExporter into base Exporter and 2 more specific interfaces -
    TraceExporter or MetricExporter. Generalized the LoadGenerator so that
    it supports both traces and metrics. Added very simple metric mock
    backend. Separated Exporter creation from Start-ing since this is needed
    to avoid exporters to begin sending data before the Collector is started
    by the testbed.
    
    Implmented OpenCensus metric protocol tests to demonstrate usage of
    new metric testing capabilities.
    
    Split perf_test.go to metric_test.go and trace_test.go.
    
    Other oportunistic fixes:
    - OpenCensus testbed Receiver can now use dynamic port number.
    - Added failure reason to the final results output.
    - Renamed TESTBED_DURATION to TESTCASE_DURATION to reflect the purpose better.
    
    TODO:
    - Add latency measurement to mockbackend.
    - Separate resource spec for metric and trace tests which use the same scenario.
