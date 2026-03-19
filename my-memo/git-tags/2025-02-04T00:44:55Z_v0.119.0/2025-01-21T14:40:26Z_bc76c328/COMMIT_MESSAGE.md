commit bc76c3284db97505abd2ffcf06c61fc8ffc6f9a4
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Jan 21 14:40:26 2025 +0000

    [cmd/mdatagen] Remove dead field telemetry::level (#12144)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Removes `telemetry::level`, which is unused. If this was intended to
    serve as the 'minimum level' for a component, I can handle that on
    #12143.
    
    This is a breaking change, but since the field was effectively dead I
    think that's fine.
    
    #### Link to tracking issue
    
    Updates #11061
