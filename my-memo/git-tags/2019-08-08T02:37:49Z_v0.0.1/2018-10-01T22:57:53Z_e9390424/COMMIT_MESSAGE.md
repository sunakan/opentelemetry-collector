commit e939042488a2fe395203c32612a90f208e2476a7
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Fri Sep 28 01:45:17 2018 -0700

    exporter: plumbing to glue SpanReceiver with OC exporters
    
    * Implemented the exporter.TraceExporter interface whose
    method
    ```go
    ExportSpanData(*commonpb.Node, ...*trace.SpanData) error
    ```
    
    is feeds into a transformer that creates a spanreceiver.SpanReceiver
    of which that signature
    ```go
    ReceiveSpans(*commonpb.Node, ...*trace.SpanData) (*spanreceiver.Acknowledgement, error)
    ```
    Also provided a dummy transformer which takes trace.Exporter-s and
    creates a spanreceiver.SpanReceiver that that is passed to each
    interceptor.
    
    * Also provided an end-to-end application which if copied and pasted
    is the prototype for our cmd/ocagent code that exports traces to the
    various traditional OpenCensus trace.Exporter-s that have grown around
    the OpenCensus ecosystem. The config parsing phase will determine
    which trace.Exporter-s will be used. In the demo, application,
    I am able to send traces to both Stackdriver and Jaeger simultaneously
