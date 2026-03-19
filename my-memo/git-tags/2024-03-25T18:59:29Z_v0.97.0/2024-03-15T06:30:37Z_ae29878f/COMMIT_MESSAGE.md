commit ae29878f2c6f95b160d55b1d4e8ccac0839a3ee9
Author: Ziqi Zhao <zhaoziqi9146@gmail.com>
Date:   Fri Mar 15 14:30:37 2024 +0800

    [cmd/mdatagen] optimize mdatagen for batchprocessor failed test (#9768)
    
    **Description:**
    fix #9688
    
    The batchprocessor use a `batchProcessor` as a common struct which
    implements `consumer.Traces`, `consumer.Metrics`, `consumer.Logs` in the
    meantime.
    
    As a result, the generated lifecycle test will fail, since when it
    create a metrics, traces processor object, it will still fall to the
    case `consumer.Logs` and panic.
    ```
    === RUN   TestComponentLifecycle/metrics-shutdown
    === RUN   TestComponentLifecycle/metrics-lifecycle
    panic: interface conversion: interface {} is plog.Logs, not pmetric.Metrics
    
    goroutine 37 [running]:
    go.opentelemetry.io/collector/processor/batchprocessor.(*batchMetrics).add(0x14000208120?, {0x10572aae0?, 0x1400029c3f0?})
            /Users/zhaoziqi/Documents/go/src/go.opentelemetry.io/opentelemetry-collector/processor/batchprocessor/batch_processor.go:450 +0x208
    go.opentelemetry.io/collector/processor/batchprocessor.(*shard).processItem(0x14000292200, {0x10572aae0?, 0x1400029c3f0?})
            /Users/zhaoziqi/Documents/go/src/go.opentelemetry.io/opentelemetry-collector/processor/batchprocessor/batch_processor.go:226 +0x38
    go.opentelemetry.io/collector/processor/batchprocessor.(*shard).start(0x14000292200)
            /Users/zhaoziqi/Documents/go/src/go.opentelemetry.io/opentelemetry-collector/processor/batchprocessor/batch_processor.go:199 +0x1a0
    created by go.opentelemetry.io/collector/processor/batchprocessor.(*batchProcessor).newShard in goroutine 36
            /Users/zhaoziqi/Documents/go/src/go.opentelemetry.io/opentelemetry-collector/processor/batchprocessor/batch_processor.go:160 +0x1a4
    exit status 2
    FAIL    go.opentelemetry.io/collector/processor/batchprocessor  0.594s
    ```
    
    **Link to tracking Issue:** <Issue number if applicable>
    fix #9688
    
    ---------
    
    Signed-off-by: Ziqi Zhao <zhaoziqi9146@gmail.com>
