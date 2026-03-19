commit d3a171889c53169e41760b25c6693bd91d206b6d
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Mon Sep 16 10:14:16 2024 -0700

    [chore] update internal dep (#11180)
    
    This is done to allow contrib dependencies to work. Otherwise,
    otelcoltest ends up picking up an old dependency that looks for
    localhostgate which has been removed.
    
    Here's an example error:
    
    ```
    go: github.com/open-telemetry/opentelemetry-collector-contrib/receiver/azureeventhubreceiver tested by
            github.com/open-telemetry/opentelemetry-collector-contrib/receiver/azureeventhubreceiver.test imports
            go.opentelemetry.io/collector/otelcol/otelcoltest imports
            go.opentelemetry.io/collector/otelcol imports
            go.opentelemetry.io/collector/service tested by
            go.opentelemetry.io/collector/service.test imports
            go.opentelemetry.io/collector/config/confighttp imports
            go.opentelemetry.io/collector/config/internal imports
            go.opentelemetry.io/collector/internal/localhostgate: package go.opentelemetry.io/collector/internal/localhostgate provided by go.opentelemetry.io/collector at latest version v0.109.0 but not at required version v0.109.1-0.20240916143658-74729e731d3b
    ```
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
