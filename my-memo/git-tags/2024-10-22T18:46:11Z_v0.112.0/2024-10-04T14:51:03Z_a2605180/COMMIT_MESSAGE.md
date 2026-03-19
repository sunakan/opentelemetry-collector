commit a260518040fa1915d510f96071418c1fcdf402e5
Author: Christos Markou <chrismarkou92@gmail.com>
Date:   Fri Oct 4 17:51:03 2024 +0300

    [mdatagen] Generate documentation for components with resource attributes only (#11242)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    This PR adds support for generating `documentation.md` files for
    components which only define resource attributes.
    This was reported at
    https://github.com/open-telemetry/opentelemetry-collector/issues/10705
    and also applies at
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/34210.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10705
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Tuned tests and added a sample processor component which only defines
    resource attributes.
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    Signed-off-by: ChrsMark <chrismarkou92@gmail.com>
