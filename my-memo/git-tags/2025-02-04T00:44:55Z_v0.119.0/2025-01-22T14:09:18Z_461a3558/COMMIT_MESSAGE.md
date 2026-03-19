commit 461a3558086a03ab13ea121d12e28e185a1c79b0
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Jan 22 14:09:18 2025 +0000

    [chore][configgrpc] Move MetricsLevel check to MeterProvider creation (#12158)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Same as #12126, but for `otelgrpc`: drops `otelgrpc` metrics depending
    of level with a view instead of passing a noop `MeterProvider`
    
    #### Link to tracking issue
    
    Updates #11061
