commit 8739948139e0e7818ae18b49819beeef06d56086
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Fri Dec 6 14:33:45 2019 -0500

    Make Testbed more protocol-independent (#446)
    
    1. Extracted TraceExporter and Receiver out of LoadGenerator and MockBackend.
    This makes the testbed core protocol-independent and allows to generate
    and receive loads using different protocols more easily. Previously it
    was pretty much hard-coded to either Jaeger or OC. Now more protocols
    can be tested.
    
    For now we have TraceExporter implementation only for OC protocol. Once more
    protocol exporters are added to the testbed we can implement matrix testing
    of different input/output protocols if needed. Until then all tests use
    Collector's OC receiver.
    
    2. Test10kSPS scenario now tests 2 Collector exporters (using 2 Testbed Receivers);
    both Jaeger and OC are tested. The test uses dynamic port and generates
    config for each protocol sub-test. This is to demonstrate that we are able
    to test more than one protocol for the same scenario.
    
    3. Made a small change to wait for Collector to start properly. Previously we
    waited for hard-coded time period which was fragile. Now we wait until we can
    connect to the the receiving port.
    
    TODO: implement metrics portion and extract testbed.MetricExporter or
    combine MetricExporter and TraceExporter into one testbed.Exporter.
