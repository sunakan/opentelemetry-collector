commit 62b0ae5be7ca9ebc3f372c09686124be786e6dc9
Author: Bogdan Drutu <bdrutu@google.com>
Date:   Tue Mar 5 17:36:22 2019 -0800

    Rename [Trace|Metrics]DataProcessor to [Trace|Metrics]Consumer, add TraceProcessor similar to receiver,exporter. (#473)
    
    * Rename [Trace|Metrics]DataProcessor to [Trace|Metrics]Processor
    
    * Rename TraceProcessor to TraceConsumer as discussed.
    
    * Add empty_test for processor.
