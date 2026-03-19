commit 4590a88012efaf9e5698b746559e08d8b546414f
Author: Roger Coll <rogercoll@protonmail.com>
Date:   Wed Jan 14 18:18:59 2026 +0100

    feat: add exporterhelper profiles telemetry metrics (#14423)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This adds obs metrics to the profiles exporters using `exporterhelper`
    package.
    
    This will be used by the profiles xexporterhelper initialization:
    https://github.com/open-telemetry/opentelemetry-collector/blob/main/exporter/exporterhelper/xexporterhelper/profiles.go#L189
    
    Follow-up PR of
    https://github.com/open-telemetry/opentelemetry-collector/pull/14226
