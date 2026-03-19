commit 9f1c0cb175457b1f4a222ebe48bbeb7ad2ec36ca
Author: Kevin Brockhoff <kbrockhoff@codekaizen.org>
Date:   Mon Jun 22 10:10:10 2020 -0500

    Fix handling of SpanKind INTERNAL in OTLP OC translation (#1143)
    
    Added setting of span attribute "span.kind" to "internal" when translating from OTLP to OC and translate back to SpanKindINTERNAL when translating from OC to OTLP.
    
    **Link to tracking Issue:** #1136 #754
    
    **Testing:** All tracing correctness tests involving only otlp and opencensus receivers and exporters now report a zero failure count.
