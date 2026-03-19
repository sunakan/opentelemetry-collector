commit a7fc1c102e90dae514830f4d26530641dc479b65
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Fri Feb 15 12:52:45 2019 -0800

    exporter/exporterparser/all: update SpanData translator
    
    Update the OpenCensus Proto TraceData
    to OpenCensus-Go SpanData translator by:
    * Name from:
        "exportSpans"
    to
        "ocProtoSpansToOCSpanDataInstrumented"
    to make it more intuitive but also declare
    its intentions and add a reminder that we
    should get vendors to start using OpenCensus Proto
    
    * Added tracing for each export with a span that'll
    record the errors and number of spans
