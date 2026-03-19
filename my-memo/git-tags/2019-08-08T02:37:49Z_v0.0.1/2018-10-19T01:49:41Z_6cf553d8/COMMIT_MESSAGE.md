commit 6cf553d81c4a0924abaf3d0b1481c04200da98d1
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Thu Oct 18 18:08:31 2018 -0700

    translator/trace: add an Annotations translator
    
    From examining and comparing the Agent proto
    vs the OpenCensus Go SpanData, discovered the
    need to translate instead of only expecting
    time events. Critical while examining differences
    in the Zipkin interceptor.
