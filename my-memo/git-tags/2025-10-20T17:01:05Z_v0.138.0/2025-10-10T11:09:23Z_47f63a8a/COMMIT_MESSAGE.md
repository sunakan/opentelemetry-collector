commit 47f63a8ae1cd5cacfd8ccb7d4867bcae3878727a
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Oct 10 13:09:23 2025 +0200

    [chore] Use pseudoversion for telemetrytest (#13994)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Unblocks update-otel job, which failed because of this:
    
    ```
     go: github.com/open-telemetry/opentelemetry-collector-contrib/receiver/prometheusreceiver/internal tested by
            github.com/open-telemetry/opentelemetry-collector-contrib/receiver/prometheusreceiver/internal.test imports
            go.opentelemetry.io/collector/otelcol imports
            go.opentelemetry.io/collector/service tested by
            go.opentelemetry.io/collector/service.test imports
            go.opentelemetry.io/collector/service/telemetry/telemetrytest: reading go.opentelemetry.io/collector/service/telemetry/telemetrytest/go.mod at revision service/telemetry/telemetrytest/v0.137.0: unknown revision service/telemetry/telemetrytest/v0.137.0
    ```
    
    <!-- Issue number if applicable -->
    
    #### Link to tracking issue
    
    Fixes open-telemetry/opentelemetry-collector-contrib/issues/43412
