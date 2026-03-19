commit db7706ad5b05f8b15220dd7577be016d0685c515
Author: Christos Markou <chrismarkou92@gmail.com>
Date:   Tue Dec 17 17:33:06 2024 +0200

    Remove warning when 0.0.0.0 is used (#11902)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Based on the discussions from
    https://github.com/open-telemetry/opentelemetry-collector/issues/11713#issuecomment-2488357615
    and
    https://github.com/open-telemetry/opentelemetry-collector/issues/8510#issuecomment-1737598294
    the warning message logged when `0.0.0.0` is used, should be removed.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Probably fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/11713
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    /cc @mx-psi
    
    ---------
    
    Signed-off-by: ChrsMark <chrismarkou92@gmail.com>
