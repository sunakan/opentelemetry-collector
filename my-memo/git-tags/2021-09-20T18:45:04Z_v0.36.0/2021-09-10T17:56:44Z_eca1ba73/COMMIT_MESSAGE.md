commit eca1ba738552524e3f2d190896da62fd93697ad3
Author: Przemek Maciolek <58699843+pmm-sumo@users.noreply.github.com>
Date:   Fri Sep 10 19:56:44 2021 +0200

    Persistent storage in queued_retry, backed by file storage extension (#3274)
    
    Persistent queue implementation within queued_retry, aimed at being compatible with Jager's [BoundedQueue](https://github.com/jaegertracing/jaeger/blob/master/pkg/queue/bounded_queue.go) interface (providing a simple replacement) and backed by [file storage extension](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/extension/storage/filestorage) for storing WAL.
    
    Currently, to run the persistent queue, OpenTelemetry Collector Contrib with `enable_unstable` build tag is required.
    
    **Link to tracking Issue:** #2285
    
    [Design doc](https://docs.google.com/document/d/1Y4vNthCGdYI61ezeAzL5dXWgiZ73y9eSjIDitk3zXsU/edit#)
    
    **Testing:** Unit Tests and manual testing, more to come
    
    **Documentation:** README.md updated, including an example
