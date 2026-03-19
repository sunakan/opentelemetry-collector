commit 827888d2f1755868a46f94adf20439b9cd03123a
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Fri Nov 22 09:43:43 2024 -0800

    [exporter] Feature gate for queue batcher (#11721)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR proceeds
    https://github.com/open-telemetry/opentelemetry-collector/pull/11637. It
    * Introduces a noop feature gate that will be used for queue batcher.
    * Updates exporter tests to run with both the feature gate on and off.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    https://github.com/open-telemetry/opentelemetry-collector/issues/10368
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
    
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
