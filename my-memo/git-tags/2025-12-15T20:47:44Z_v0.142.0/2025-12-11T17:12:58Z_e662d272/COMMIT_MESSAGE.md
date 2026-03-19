commit e662d272e6d06e08a8935ae19aeb637196c461e3
Author: Andrew Wilkins <axw@elastic.co>
Date:   Fri Dec 12 01:12:58 2025 +0800

    [chore] otlphttpexporter: speed up lifecycle tests (#14277)
    
    #### Description
    
    Make sure the tests use an invalid endpoint, so they don't block trying
    to connect.
    
    Before:
    
    ```
    === RUN   TestComponentLifecycle/metrics-lifecycle
    === RUN   TestComponentLifecycle/traces-shutdown
    === RUN   TestComponentLifecycle/traces-lifecycle
    --- PASS: TestComponentLifecycle (90.05s)
        --- PASS: TestComponentLifecycle/logs-shutdown (0.00s)
        --- PASS: TestComponentLifecycle/logs-lifecycle (30.03s)
        --- PASS: TestComponentLifecycle/metrics-shutdown (0.00s)
        --- PASS: TestComponentLifecycle/metrics-lifecycle (30.02s)
        --- PASS: TestComponentLifecycle/traces-shutdown (0.00s)
        --- PASS: TestComponentLifecycle/traces-lifecycle (30.00s)
    PASS
    ok      go.opentelemetry.io/collector/exporter/otlphttpexporter 90.121s
    ```
    
    After:
    
    ```
    $ go test -v -run Lifecycle
    === RUN   TestComponentLifecycle
    === RUN   TestComponentLifecycle/logs-shutdown
    === RUN   TestComponentLifecycle/logs-lifecycle
    === RUN   TestComponentLifecycle/metrics-shutdown
    === RUN   TestComponentLifecycle/metrics-lifecycle
    === RUN   TestComponentLifecycle/traces-shutdown
    === RUN   TestComponentLifecycle/traces-lifecycle
    --- PASS: TestComponentLifecycle (0.00s)
        --- PASS: TestComponentLifecycle/logs-shutdown (0.00s)
        --- PASS: TestComponentLifecycle/logs-lifecycle (0.00s)
        --- PASS: TestComponentLifecycle/metrics-shutdown (0.00s)
        --- PASS: TestComponentLifecycle/metrics-lifecycle (0.00s)
        --- PASS: TestComponentLifecycle/traces-shutdown (0.00s)
        --- PASS: TestComponentLifecycle/traces-lifecycle (0.00s)
    PASS
    ok      go.opentelemetry.io/collector/exporter/otlphttpexporter 0.045s
    ```
    
    #### Link to tracking issue
    
    No
    
    #### Testing
    
    Yes
    
    #### Documentation
    
    No
