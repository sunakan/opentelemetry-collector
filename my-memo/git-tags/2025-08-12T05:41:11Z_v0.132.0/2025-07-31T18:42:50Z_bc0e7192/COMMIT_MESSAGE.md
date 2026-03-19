commit bc0e7192c8292fabb2dfeddabaad8445995df9a4
Author: Yang Song <songy23@users.noreply.github.com>
Date:   Thu Jul 31 14:42:50 2025 -0400

    Revert "fix(deps): update all opentelemetry-go-contrib packages" (#13540)
    
    Reverts open-telemetry/opentelemetry-collector#13514
    
    Context:
    https://github.com/open-telemetry/opentelemetry-collector/pull/13466
    
    go.opentelemetry.io/otel/exporters/prometheus v0.59.x has a bug leading
    to unexpected suffix in metric names, we want to stay with v0.58.0
