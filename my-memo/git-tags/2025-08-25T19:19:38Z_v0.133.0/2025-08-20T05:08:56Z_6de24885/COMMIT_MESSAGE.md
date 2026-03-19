commit 6de248854aee53e81cfdda874aba54ae945ad4bf
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Wed Aug 20 01:08:56 2025 -0400

    [configgrpc] Make TCP the default transport type (#13673)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Most gRPC servers are serving over HTTP/2, so use TCP as the default
    transport type.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/13657
