commit 38c9550146b49e0bb95ef1784df56a187e912dab
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Sat Nov 17 23:39:43 2018 -0700

    all: revise TraceExporter to take in ...tracepb.Span
    
    Fix TraceExporter's signature from:
    
        ExportSpanData(ctx context.Context, node *commonpb.Node, spandata ...*trace.SpanData) error
    
    to
    
        ExportSpans(ctx context.Context, node *commonpb.Node, spans ...*tracepb.Span) error
    
    as the original signature leaked the intention of reusing OpenCensus-Go
    exporters, but really that is an implementation detail left to the
    exporters.
    
    Fixes #207
