commit fd72651e1406b9bc90036e088dc3aeaa318f8c3b
Author: Matthew Wear <matthew.wear@gmail.com>
Date:   Thu Jun 22 14:35:40 2023 -0700

    Add helpers to construct `connector.*Router`s for tests (#7673)
    
    This PR adds helpers to `connectortest` to aid the construction of
    `connector.*Router`s for testing connectors. This was implemented based
    on @djaglowski's [comment
    here](https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/21498#issuecomment-1542682841),
    with some slight modifications. I found it more ergonomic to pass the
    sink into the `WithTracesSink` (and similar) options. You usually want a
    handle on the sink after creating the router. While it's possible to get
    the sink out of the router after the fact, it's a little cumbersome.
    
    These helpers will be useful for
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/21498
    and future connectors that need use of routers.
    
    For example, here is a test with the consumer passed in:
    
    ```go
    func TestFanoutTracesWithSink(t *testing.T) {
        var sink0, sink1 consumertest.TracesSink
    
        tr, err := NewTracesRouterSink(
            WithTracesSink(component.NewIDWithName(component.DataTypeTraces, "0"), &sink0),
            WithTracesSink(component.NewIDWithName(component.DataTypeTraces, "1"), &sink1),
        )
    
        require.NoError(t, err)
        require.Equal(t, 0, sink0.SpanCount())
        require.Equal(t, 0, sink1.SpanCount())
    
        td := testdata.GenerateTraces(1)
        err = tr.(consumer.Traces).ConsumeTraces(context.Background(), td)
    
        require.NoError(t, err)
        require.Equal(t, 1, sink0.SpanCount())
        require.Equal(t, 1, sink1.SpanCount())
    }
    
    ```
    
    The same test having to extract the consumer out after the fact:
    
    ```go
    func TestFanoutTracesWithSink(t *testing.T) {
        traces0 := component.NewIDWithName(component.DataTypeTraces, "0")
        traces1 := component.NewIDWithName(component.DataTypeTraces, "1")
    
        tr, err := NewTracesRouterSink(
            WithTracesSink(traces0),
            WithTracesSink(traces1),
        )
    
        require.NoError(t, err)
    
        cons0, _ := tr.Consumer(traces0)
        sink0 := cons0.(*consumertest.TracesSink)
        cons1, _ := tr.Consumer(traces1)
        sink1 := cons1.(*consumertest.TracesSink)
    
        require.Equal(t, 0, sink0.SpanCount())
        require.Equal(t, 0, sink1.SpanCount())
    
        td := testdata.GenerateTraces(1)
        err = tr.(consumer.Traces).ConsumeTraces(context.Background(), td)
    
        require.NoError(t, err)
        require.Equal(t, 1, sink0.SpanCount())
        require.Equal(t, 1, sink1.SpanCount())}
    }
    ```
    
    
    **Link to tracking Issue:**
    #7672
    
    **Testing:**
    Unit tests
    
    **Documentation:**
    Source code comments
    
    ---------
    
    Co-authored-by: Daniel Jaglowski <jaglows3@gmail.com>
