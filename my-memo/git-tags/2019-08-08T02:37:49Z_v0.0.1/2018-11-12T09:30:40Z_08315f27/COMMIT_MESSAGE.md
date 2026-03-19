commit 08315f27fa6a6eae22dc564245ec638151dff48f
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Sun Nov 11 21:05:18 2018 -0700

    translator/trace/jaeger: conservative allocations for only existent fields
    
    * Only allocate TraceID and SpanID iff they are non-nil lest we'll
    consume 8/16 bytes for every span which becomes quite expensive
    * Also retrieve "status.code" and "status.message" as the Jaeger exporter
    from OpenCensus sends those
    * Avoid creating an attributes map if attributes don't exist and
    let go of the `make(map[<K>]<V>, size_hint)` idiom as it prevents
    us from being able to detect if values were added to the attributes map
    * Added in-code conversion tests to ensure fidelity preservation
    * Translate "message" in logs/tags to a description value
    
    Noticed while rolling out the Jaeger receiver/interceptor.
    
    Fixes #187
    Fixes #188
    Fixes #189
    Fixes #190
