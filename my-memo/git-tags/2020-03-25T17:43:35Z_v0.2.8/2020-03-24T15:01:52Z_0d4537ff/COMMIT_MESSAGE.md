commit 0d4537ff54d9d0ab4cdc01e53f5a9da0129d4813
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Mar 24 11:01:52 2020 -0400

    Enable OTLP exporter and add OTLP E2E tests (#684)
    
    - OTLP exporter is now a component enabled in the default build.
    - Added OTLP E2E tests for traces.
    
    TODO: Add OTLP E2E tests for metrics once metrics are supported
    in OTLP exporter.
    
    Resolves: https://github.com/open-telemetry/opentelemetry-collector/issues/668
