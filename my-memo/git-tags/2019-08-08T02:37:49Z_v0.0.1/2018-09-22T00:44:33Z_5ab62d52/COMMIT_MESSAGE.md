commit 5ab62d52a644d8d24a0c9f8565f55309e487d46a
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Fri Sep 21 04:54:45 2018 -0700

    translator/trace: ProtoSpanToOCSpanData
    
    Provides a function to translate *tracepb.Span
    into *go.opencensus.io/trace.SpanData
    
    Updates #26
