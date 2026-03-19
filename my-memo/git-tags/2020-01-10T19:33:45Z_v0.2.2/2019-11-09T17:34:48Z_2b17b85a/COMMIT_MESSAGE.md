commit 2b17b85abbdb9325bb301f92733b88b6dadb0dda
Author: Paulo Janotti <paulo@omnition.io>
Date:   Sat Nov 9 09:34:48 2019 -0800

    Improve batching for Zipkin V2 spans (#414)
    
    * Improve batching for Zipkin spans
    
    The local end point of zipkin typically includes the ip address and that can have a very high cardinality making batching inefficient since the batch processor groups according to the node configuration. This change stops storing this information on the node and put it on the span attributes. The zipkin exporter recognize the attributes and it is capable of returning local and remote endpoint of a span to its original values.
    
    Fixed zipkin receiver TestConversionRoundtrip: the function testutils.GenerateNormalizedJSON was not checking for errors when marshaling/unmarshaling and the TestConversionRoundtrip was passing because both JSON objects were "null" what was not intended. This changes fixes the test and the helper function so similar doesn't repeat for other tests.
    
    Since the dependency with zipkin exporter of OpenCensus was removed 'go mod tidy' was also executed for root and testbed.
    
    * Do not change trace data when exporting to zipkin
    
    This keeps the internal trace data unchanged. In order to avoid redundancy on zipkin spans the data that can be represented as local or remote zipkin endpoint is removed only from zipkin spans.
    
    * Add few comments and explain a hard coded value on make
    
    * Simplify attribute lookup
    
    * Add zipkin Format to TestConversionRoundtrip
