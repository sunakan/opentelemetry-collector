commit 2b33043a502493a0e12131169c51a39cc5b78f3a
Author: Mengyi Zhou (bjrara) <zmengyi@amazon.com>
Date:   Fri Apr 16 11:05:05 2021 -0700

    Add job and instance as well-known attribute in prometheus receiver (#2897)
    
    In Prometheus, `job` and `instance` are the two auto generated labels, however they are both dropped by prometheus receiver. Although these information is still available in `service.name` and `host`:`port`, it breaks the data contract for most Prometheus users (who use `job` and `instance` to consume metrics in their own system).
    This PR adds `job` and `instance` as well-known labels in prometheus receiver to fix the issue.
    
    **Link to tracking Issue:**
    https://github.com/open-telemetry/opentelemetry-collector/issues/575
    https://github.com/open-telemetry/opentelemetry-collector/issues/2499
    https://github.com/open-telemetry/opentelemetry-collector/issues/2363
    https://github.com/open-telemetry/wg-prometheus/issues/7
