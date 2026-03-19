commit 45a802483e0751ace88a06413847ef7d0380c4d1
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Jan 22 10:37:39 2025 +0000

    [chore][confighttp] Move MetricsLevel check to MeterProvider creation (#12126)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Drops `otelhttp` metrics depending of level with a view instead of
    passing a noop `MeterProvider`
    
    ~~I am not sure if this would have a performance impact or not.~~
    Checked with Damien, this should not have any visible impact.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Updates #11061
