commit 5060166f1d432b666516fb9725babc4c339d4563
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Oct 23 13:57:46 2025 +0000

    [configoptional] Add support for setting an 'enabled' field under a feature gate (#13995)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Adds support for disabling or enabling optional fields through an
    `enabled` key under an alpha feature gate,
    `configoptional.AddEnabledField`. For example, the following
    configuration becomes valid:
    
    ```yaml
    receivers:
      otlp:
        protocols:
          grpc:
            enabled: true
    
    exporters:
      nop:
    
    service:
      pipelines:
        traces:
          receivers: [otlp]
          exporters: [nop]
    ```
    
    and is equivalent to:
    
    ```yaml
    receivers:
      otlp:
        protocols:
          grpc:
    
    exporters:
      nop:
    
    service:
      pipelines:
        traces:
          receivers: [otlp]
          exporters: [nop]
    ```
    
    
    #### Link to tracking issue
    
    Fixes #13894
    Updates #14021
