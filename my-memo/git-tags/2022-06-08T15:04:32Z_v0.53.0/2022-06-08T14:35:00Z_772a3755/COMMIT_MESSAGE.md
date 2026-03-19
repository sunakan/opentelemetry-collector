commit 772a3755f4e8e132e4a4068d2884ecb3ddbaa48f
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Jun 8 16:35:00 2022 +0200

    [chore] prepare v0.53.0 release (#5493)
    
    * Update CHANGELOG
    
    * Update versions.yaml
    
    * Prepare collector-core for version v0.53.0
    
    * Update the collector version in the collector builder to the new release in ./cmd/builder/internal/builder/config.go.
    
    * Update the collector version in the manifest used by make run to the new release in ./cmd/otelcorecol/builder-config.yaml and run make genotelcorecol
    
    * Update the collector version in the examples/k8s/otel-config.yaml
