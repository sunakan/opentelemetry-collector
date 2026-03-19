commit 4397ebc2111ca12218e9c068b0d2da405f25d3fa
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon Feb 17 17:39:35 2025 +0100

    [chore] More pseudoversions bumps (#12408)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Bumps `xexporterhelper` pseudoversion to work around this error in `make
    update-otel`:
    
    ```
    go: github.com/open-telemetry/opentelemetry-collector-contrib/cmd/oteltestbedcol imports
            go.opentelemetry.io/collector/exporter/debugexporter imports
            go.opentelemetry.io/collector/exporter/exporterhelper/xexporterhelper tested by
            go.opentelemetry.io/collector/exporter/exporterhelper/xexporterhelper.test imports
            go.opentelemetry.io/collector/exporter/internal/requesttest: package go.opentelemetry.io/collector/exporter/internal/requesttest provided by go.opentelemetry.io/collector/exporter at latest version v0.119.0 but not at required version v0.119.1-0.20250217142445-a567a0176541
    ```
