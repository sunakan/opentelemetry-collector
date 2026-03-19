commit 1893ac023f6ed9dac8effa52ca2cd94a0d637c04
Author: Felix Geisendörfer <felix.geisendoerfer@datadoghq.com>
Date:   Fri Mar 13 12:51:39 2026 +0100

    Bump go.opentelemetry.io/proto/otlp indirect dependency to v1.10.0 (#14766)
    
    #### Description
    Update `go.opentelemetry.io/proto/otlp` from v1.9.0 to v1.10.0 in 5
    modules where it was still an indirect dependency: `cmd/otelcorecol`,
    `otelcol`, `otelcol/otelcoltest`, `service`, and
    `service/telemetry/telemetrytest`.
    
    The direct dependencies (`pdata`, `internal/e2e`) were already at
    v1.10.0. No generated code changes — `make genpdata` produces no diff.
    
    #### Link to tracking issue
    
    #### Testing
    Ran `go mod tidy` and `go test ./...` on all affected modules. Verified
    `make genpdata` produces no diff.
    
    #### Documentation
    No documentation changes needed.
