commit b1579a581cbf57e68879850b7a2388ae449b0048
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue May 21 17:36:18 2024 +0200

    [service/telemetry] Switch to a factory pattern (#10001)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Switches `service/telemetry` to a factory pattern. To avoid adding a lot
    of public API in one go:
    1. the actual factory builder is in an internal package
    2. I have not added the `CreateMeterProvider` method yet
    
    There are two goals with this: one is to make progress on #4970, the
    other is to allow initializing telemetry sooner:
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Updates #4970.
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Updates existing tests to use `NewFactory`
