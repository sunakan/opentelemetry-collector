commit 96a882a87742e2a921ebabf8e43ad97d8bf0e8c0
Author: Przemek Maciolek <58699843+pmm-sumo@users.noreply.github.com>
Date:   Mon Nov 29 19:48:00 2021 +0100

    Handle corrupted persistent storage data gracefully (#4475)
    
    This fixes a bug with handling corrupted data by persistent buffer. In principle, when corrupted data is encountered, it should be handled gracefully. This fix makes sure this happens for several scenarios. Also, the change adds several test cases
    
    The original bug was found by @pmalek-sumo and was expressed by following:
    
    ```
    2021-11-24T11:53:33.753Z    info    internal/persistent_storage.go:309    Fetching items left for dispatch by consumers    {"kind": "exporter", "name": "otlphttp/containers", "queueName": "otlphttp/containers-logs", "numberOfItems": 2}
    panic: interface conversion: interface is nil, not internal.PersistentRequest
    
    goroutine 1 [running]:
    go.opentelemetry.io/collector/exporter/exporterhelper/internal.(*batchStruct).getRequestResult(0xc001653038, {0x4e937b8, 0x1})
        go.opentelemetry.io/collector@v0.38.0/exporter/exporterhelper/internal/persistent_storage_batch.go:115 +0x65
    go.opentelemetry.io/collector/exporter/exporterhelper/internal.(*persistentContiguousStorage).retrieveNotDispatchedReqs(0xc001068140, {0x567dda0, 0xc000078030})
        go.opentelemetry.io/collector@v0.38.0/exporter/exporterhelper/internal/persistent_storage.go:341 +0xf6d
    go.opentelemetry.io/collector/exporter/exporterhelper/internal.newPersistentContiguousStorage({0x567dda0, 0xc000078030}, {0xc000fde040, 0x19}, 0x1388, 0xc001006960, {0x56aedf8, 0xc00000ebf0}, 0xc00100e630)
        go.opentelemetry.io/collector@v0.38.0/exporter/exporterhelper/internal/persistent_storage.go:124 +0x1e5
    go.opentelemetry.io/collector/exporter/exporterhelper/internal.NewPersistentQueue(...)
        go.opentelemetry.io/collector@v0.38.0/exporter/exporterhelper/internal/persistent_queue.go:44
    go.opentelemetry.io/collector/exporter/exporterhelper.
    ```
    
    **Link to tracking Issue:** N/A
    
    **Testing:** Unit tests added
    
    **Documentation:** N/A
