commit 70f9fe94fe0a846fb460063f0bf58ade6a4bcded
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Jan 22 09:51:27 2025 +0000

    [chore][service] Drop component metrics depending on level (#12143)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Drops metrics that depend on the metrics level:
    - Batch processor metric
    - otelarrow metrics (see open-telemetry/otel-arrow/issues/280 for
    limitation).
    - internal/otelarrow/netstats metrics. I did not implement
    https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/a25f058256e8339e49e4c89ac622a9ef47b52334/internal/otelarrow/netstats/netstats.go#L133-L136
    since `LevelNone` drops all metrics.
    
    This attemps to unblock #11601 by hardcoding the metrics here since
    there is a small number of them. Once we do #11754 we can move this back
    to the individual components
    
    #### Link to tracking issue
    
    Updates #11061
