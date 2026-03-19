commit 2c9229d59d57d2c76991191273b2392f24cbca7b
Author: Antoine Toulme <atoulme@splunk.com>
Date:   Thu Aug 8 04:57:08 2024 -0700

    [configtelemetry] Add a read header timeout of 10s on the configtelemetry Prometheus HTTP server (#10675)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Add 10s read header timeout on the configtelemetry Prometheus HTTP
    server.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #5699
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
