commit 10121222d11df2bc0e7c375bd03f3216d892d4f9
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Mar 12 12:54:32 2025 +0100

    [extensionauth] Split extensionauth.Client by protocol type (#12574)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    An attempt at splitting `extensionauth.Client` by protocol type.
    open-telemetry/opentelemetry-collector-contrib/pull/38451 removes usages
    of the `NewClient` and `NewServer` constructor
    
    ---------
    
    Co-authored-by: Jade Guiton <jade.guiton@datadoghq.com>
