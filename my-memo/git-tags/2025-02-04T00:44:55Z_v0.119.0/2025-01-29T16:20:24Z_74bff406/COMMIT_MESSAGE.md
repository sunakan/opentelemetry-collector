commit 74bff40691fdccf6b2bfd1465bc2d5810a3289c0
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Jan 29 16:20:24 2025 +0000

    [extension] Change from interface alias to embedding alias (#12208)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Changes `extension.Extension` to a proper interface that embeds
    `component.Component` instead of being an alias.
    
    #### Link to tracking issue
    Fixes the second point mentioned in
    https://github.com/open-telemetry/opentelemetry-collector/issues/11443#issuecomment-2616396687
