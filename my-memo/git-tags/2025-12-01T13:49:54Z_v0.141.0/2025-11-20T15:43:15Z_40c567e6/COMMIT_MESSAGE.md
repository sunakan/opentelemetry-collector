commit 40c567e65ff363e94ddcb47e6c52967896fa35c3
Author: Florian Lehner <florianl@users.noreply.github.com>
Date:   Thu Nov 20 16:43:15 2025 +0100

    Fix pprofile DurationNano to be a TypeUint64 (#14188)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    pcommon.Timestamp better represents a point in time rather than a
    duration. So keeping the proto field type for DurationNano is a better
    fit.
    
    Corresponding Collector-contrib change:
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/44397
    
    ping @open-telemetry/profiling-approvers
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Signed-off-by: Florian Lehner <florian.lehner@elastic.co>
