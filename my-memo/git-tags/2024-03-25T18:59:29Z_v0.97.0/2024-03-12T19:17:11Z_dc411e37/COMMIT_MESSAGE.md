commit dc411e37b81d59028e887dc0c24407070598cd72
Author: David Ashpole <dashpole@google.com>
Date:   Tue Mar 12 15:17:11 2024 -0400

    Give NoOp create settings a unique name (#9637)
    
    Long story, but i'm working on updating the prometheus dependency:
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/30934
    
    As part of that update, we need to adapt to a change that makes the
    prometheus servers' self-observability metrics independent. See
    https://github.com/prometheus/prometheus/issues/13507 and
    https://github.com/prometheus/prometheus/pull/13610
    
    One way to adapt to this change is by adding a label to each receivers'
    metrics to differentiate one Prometheus receiver from another. I've
    tried taking that approach in
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/30934,
    but the current issue is that the NoOp components all have the same
    name, which causes the self-observability metrics to collide.
    
    I can work around this in the prometheus receiver's own tests, but I
    can't work around the issue in the `generated_component_test.go` tests,
    since those are generated.
    
    This PR makes the ID returned by `NewNopCreateSettings` unique by giving
    it a unique name.
    
    **Link to tracking Issue:**
    
    Part of
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/30883
    
    cc @Aneurysm9
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
