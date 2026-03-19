commit b23a7c9a5d678441c0d8c338ecf310e11f385700
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon Jul 21 20:15:14 2025 +0200

    Revert "Downgrade otel-go" (#13443)
    
    Reverts open-telemetry/opentelemetry-collector#13429 so that we can bump
    to the to-be-released bugfix version that adds
    open-telemetry/opentelemetry-go/pull/7044
