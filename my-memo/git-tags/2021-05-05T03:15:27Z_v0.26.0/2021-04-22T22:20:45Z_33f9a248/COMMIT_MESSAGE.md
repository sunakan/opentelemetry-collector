commit 33f9a248b65d34f40707c539a438d19b9906957c
Author: Jaana Dogan <jbd@amazon.com>
Date:   Thu Apr 22 15:20:45 2021 -0700

    Don't drop instance and job labels in the Prometheus Remote Write Exporter (#2979)
    
    This is a follow up to #2897.
    
    Fixes #575
    Fixes #2499
    Fixes #2363
    Fixes open-telemetry/wg-prometheus#37
    Fixes open-telemetry/wg-prometheus#39
    Fixes open-telemetry/wg-prometheus#44
    
    Passing compliance tests:
    
    $ go test --tags=compliance -run "TestRemoteWrite/otelcollector/Job.+" -v ./
    === RUN TestRemoteWrite
    === RUN TestRemoteWrite/otelcollector
    === RUN TestRemoteWrite/otelcollector/JobLabel
    === PAUSE TestRemoteWrite/otelcollector/JobLabel
    === CONT TestRemoteWrite/otelcollector/JobLabel
    --- PASS: TestRemoteWrite (10.02s)
    --- PASS: TestRemoteWrite/otelcollector (0.00s)
    --- PASS: TestRemoteWrite/otelcollector/JobLabel (10.02s)
    PASS
    ok github.com/prometheus/compliance/remote_write 10.382s
    $ go test --tags=compliance -run "TestRemoteWrite/otelcollector/Instance.+" -v ./
    === RUN TestRemoteWrite
    === RUN TestRemoteWrite/otelcollector
    === RUN TestRemoteWrite/otelcollector/InstanceLabel
    === PAUSE TestRemoteWrite/otelcollector/InstanceLabel
    === CONT TestRemoteWrite/otelcollector/InstanceLabel
    --- PASS: TestRemoteWrite (10.01s)
    --- PASS: TestRemoteWrite/otelcollector (0.00s)
    --- PASS: TestRemoteWrite/otelcollector/InstanceLabel (10.01s)
    PASS
    ok github.com/prometheus/compliance/remote_write 10.291s
    $ go test --tags=compliance -run "TestRemoteWrite/otelcollector/RepeatedLabels.+" -v ./
    === RUN TestRemoteWrite
    === RUN TestRemoteWrite/otelcollector
    --- PASS: TestRemoteWrite (0.00s)
    --- PASS: TestRemoteWrite/otelcollector (0.00s)
    testing: warning: no tests to run
    PASS
