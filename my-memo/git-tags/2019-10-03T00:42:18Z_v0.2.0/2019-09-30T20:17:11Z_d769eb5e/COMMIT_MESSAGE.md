commit d769eb5e7ee9d62bdd37a39bcafa534fd5864ccc
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Sep 30 16:17:11 2019 -0400

    Fix concurrency handling when data is fanned out (#367)
    
    `traceFanOutConnector` and `metricsFanOutConnector` previously simply
    passed `TraceData` or `MetricsData` to consumers.
    
    This could cause problems when the data is fed into multiple pipelines
    and is concurrently processed and modified by processors.
    
    Fan out connectors now create clones of data before and the clone to
    each consumer that is connected (except one - which can use the original).
    
    This is used both for fanout connectors used when the same receiver
    feeds data to multiple pipelines (which is somewhat rare use case)
    and also when we have multiple exporters connected to the same pipeline
    (exporters may modify data).
    
    Also added documentation that explains data ownership requirements
    for pipeline components.
    
    Fixes issues:
    https://github.com/open-telemetry/opentelemetry-service/issues/353
    https://github.com/open-telemetry/opentelemetry-service/issues/368
