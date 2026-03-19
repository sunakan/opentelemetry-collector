commit 327f0403b93b7d546463bfefc842a2f2c82d21e8
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Thu Sep 20 22:25:08 2018 -0700

    spanreceiver: define SpanReceiver interface
    
    An interface `SpanReceiver` that receives:
        (*commonpb.Node, ...*tracepb.Span)
    
    to uniquely identify a data source by node alongside
    the spans it has received from that source.
    It sends back an acknowledgement and an error.
    
    The return signature is `(*Acknowledgement, error)` because it
    would useful to return to callers information about how many spans
    were successful, errors that were encountered, allowing for batches
    of spans to be written like we would with `io.Write`. This will allow
    callers to retry, report success and failure rates too.
    
    Fixes #30
