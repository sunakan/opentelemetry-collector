commit 800c5c620df41e07c7bd6194e75621d548b7d8c0
Author: Mateusz "mat" Rumian <58699800+mat-rumian@users.noreply.github.com>
Date:   Mon Apr 20 18:57:50 2020 +0200

    Add Zipkin tests to testbed (#681)
    
    I've added Zipkin data receiver and sender for testbed. Few tests were updated and two new created.
    
    **Link to tracking Issue:**
    [Issue-482](https://github.com/open-telemetry/opentelemetry-collector/issues/482)
    
    **Testing:**
    - TestGeneratorAndBackend -> changed the test name, Jaeger and Zipkin as test cases
    - TraceNoBackend10kSPS -> created test scenario, possibility to add new test cases
    - Trace10kSPS -> added Zipkin test case
