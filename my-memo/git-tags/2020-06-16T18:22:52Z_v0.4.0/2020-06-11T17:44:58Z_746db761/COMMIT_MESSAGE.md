commit 746db761d19ed12ac2278cdfe7f30826a5ba6257
Author: Chris Smith <chris.smith@zocdoc.com>
Date:   Thu Jun 11 13:44:58 2020 -0400

    Zipkin Receiver: default timestamp (#1068)
    
    Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/954
    
    #954 is being caused from the conversion of OC -> Internal -> OC span types.
    
    OC technically allows nil times because its a pointer, but [docs state](https://github.com/census-instrumentation/opencensus-proto/blob/master/src/opencensus/proto/trace/v1/trace.proto#L125-L135)
    
    ```go
    // This field is semantically required. When not set on receive -
    // receiver should set it to the value of end_time field if it was
    // set. Or to the current time if neither was set. It is important to
    // keep end_time > start_time for consistency.
    //
    // This field is required.
    StartTime *timestamp.Timestamp
    ```
    
    So this pr changes the zipkin receiver to set the start/end timestamps if they're not set on receive
