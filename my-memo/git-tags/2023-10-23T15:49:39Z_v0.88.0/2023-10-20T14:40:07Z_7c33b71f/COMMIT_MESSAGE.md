commit 7c33b71f3627c55d9ce81de52f9f5bd4544b8bb3
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Oct 20 16:40:07 2023 +0200

    [cmd/builder] Fix otelcol_version being ignored (#8713)
    
    Adds `go.opentelemetry.io/collector/otelcol` to `go.mod` template for
    the builder. This fixes #8692.
    
    Since #8443, the `otelcol` folder is its own component. Before this
    change, `otelcol_version` was enforced by the `collector` module
    dependency:
    
    https://github.com/open-telemetry/opentelemetry-collector/blob/287b98f6973fd6baa278150b9fca8c83abea0af4/cmd/builder/internal/builder/templates/go.mod.tmpl#L23
    
    After this change, the `go mod tidy` step here:
    
    https://github.com/open-telemetry/opentelemetry-collector/blob/287b98f6973fd6baa278150b9fca8c83abea0af4/cmd/builder/internal/builder/main.go#L115
    
    will add the latest available version for the `otelcol` module since
    none of the components actually depend on it. For example, with the
    `v0.86.0` builder config the output is as follows:
    
    ```
    ❯ go mod tidy -v -compat=1.20
    go: finding module for package go.opentelemetry.io/collector/otelcol
    go: found go.opentelemetry.io/collector/otelcol in go.opentelemetry.io/collector/otelcol v0.87.0
    ```
    
    Explicitly adding `otelcol` makes it so the `otelcol_version` is
    correctly honored.
    
    **Link to tracking Issue:** Fixes #8692
