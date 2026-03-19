commit ab33d4bc03d3c3b8a5fcf635368d55010d6f89a5
Author: Christos Markou <chrismarkou92@gmail.com>
Date:   Wed Oct 29 12:48:46 2025 +0200

    [mdatagen] make stability a required field (#14070)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    With the completion of
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/42809
    we can move on and make the `stability` field required for metrics so as
    new metrics from now on should explicitly define their stability.
    
    We still need to work-on/finalise the guidelines for moving metrics
    through stability levels but this is covered by
    https://github.com/open-telemetry/opentelemetry-collector/issues/13910.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Tuned
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    Tuned
    
    ---------
    
    Signed-off-by: ChrsMark <chrismarkou92@gmail.com>
