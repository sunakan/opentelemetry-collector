commit 2527d3693413bcc763a775bbf4c6db408ec5028c
Author: Vignesh (Vinn) <51945617+vignesh-codes@users.noreply.github.com>
Date:   Wed May 21 11:29:28 2025 -0400

    Add context handling to sinks in consumertest (#13048)
    
    #### Description
    This PR enhances the `consumertest.Sink` types (TracesSink, MetricsSink,
    LogsSink, ProfilesSink) to store and expose request contexts during
    consumption
    
    Changes include:
    - Added context storage to all sink types
    - Added `AllContexts()` method to retrieve stored contexts
    - Updated `Reset()` to clear stored contexts
    - Added comprehensive tests for context transformation verification
    
    #### Link to tracking issue
    Fixes
    [#13039](https://github.com/open-telemetry/opentelemetry-collector/issues/13039)
    
    #### Testing
    Added new test cases to verify context handling:
    - `TestSinkContextTransformation`: Verifies context preservation across
    all sink types
    - `TestContextTransformationChain`: Tests complex chains of context
    transformations
    - `TestConcurrentContextTransformations`: Ensures thread-safe context
    handling
    - Added context verification to existing sink tests
    
    #### Documentation
