commit 2447a81885fc580860860bd6a8768422a70c99f8
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Jan 24 12:05:26 2025 +0000

    [component] Deprecate TelemetrySettings.MetricsLevel (#12159)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    - Deprecates `component.TelemetrySettings.MetricsLevel`
    - Sets the value passed to components to always be
    `configtelemetry.LevelDetailed`
    
    #### Link to tracking issue
    
    Updates #11061
