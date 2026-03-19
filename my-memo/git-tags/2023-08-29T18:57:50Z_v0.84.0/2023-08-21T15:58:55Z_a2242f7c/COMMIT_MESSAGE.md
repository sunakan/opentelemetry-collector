commit a2242f7c88882bb1bc2c312a23c58aa845e0c041
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Aug 21 08:58:55 2023 -0700

    [exporterhelper] New exporter helper for custom requests (#8178)
    
    Introduce a new exporter helper that operates over client-provided
    requests instead of pdata. The helper user now has to provide
    `Converter` - an interface with a function implementing translation of
    pdata Metrics/Traces/Logs into a user-defined `Request`. `Request` is an
    interface with only one required function `Export`.
    
    It opens a door for moving batching to the exporter, where batches will
    be built from client data format, instead of pdata. The batches can be
    properly sized by custom request size, which can be different from OTLP.
    The same custom request sizing will be applied to the sending queue. It
    will also improve the performance of the sending queue retries for
    non-OTLP exporters, they don't need to translate pdata on every retry.
    
    This is an implementation alternative to
    https://github.com/open-telemetry/opentelemetry-collector/pull/7874 as
    suggested in
    https://github.com/open-telemetry/opentelemetry-collector/pull/7874#discussion_r1278444371
    
    Tracking Issue:
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
    
    ---------
    
    Co-authored-by: Alex Boten <alex@boten.ca>
