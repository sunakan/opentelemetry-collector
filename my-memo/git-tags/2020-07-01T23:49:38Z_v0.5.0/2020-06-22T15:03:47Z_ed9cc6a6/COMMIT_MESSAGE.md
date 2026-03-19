commit ed9cc6a6942326ed5b866f768fd900a42e1b4c83
Author: Kevin Brockhoff <kbrockhoff@codekaizen.org>
Date:   Mon Jun 22 10:03:47 2020 -0500

    Added deep validation of span attributes, events and links (#1144)
    
    Addressed all TODOs in testbed/testbed/validator.go including validation of span attribute keys and values, span event names, timestamp and attributes, span link spanIds and attributes.
    
    **Testing:** Ran all tracing correctness tests with no panics and no additional failures found in otlp and opencensus receiver and exporter combinations.
