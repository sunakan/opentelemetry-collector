commit dbe7ad4e33fb9cabb82fbbc9e6469f6f5610c7c4
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Sat Sep 22 12:16:45 2018 -0700

    interceptor/opencensus: provide WithSpanBufferCount
    
    WithSpanBufferCount is an option that enables
    configuring an OCInterceptor with a count of spans
    to be batched/buffered before sending to
    the SpanReceiver.
