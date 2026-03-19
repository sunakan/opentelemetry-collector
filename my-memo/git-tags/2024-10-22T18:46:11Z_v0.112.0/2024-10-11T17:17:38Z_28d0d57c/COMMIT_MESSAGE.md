commit 28d0d57c358d850166c7a0d14eaad3d162e2ce56
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Fri Oct 11 10:17:38 2024 -0700

    [exporter] exporter queue Read() (#11396)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR adds a public function `GetNextItem` to queue (both persistent
    queue and bounded memory queue)
    
    Why this change?
    Instead of blocking until consumption of the item is done, we would like
    to separate the API for reading and committing consumption.
    
    Before:
    `Consume(consumeFunc)`
    
    After:
    `idx, item = Read()`
    `OnProcessingFinished(idx)`
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
    https://github.com/open-telemetry/opentelemetry-collector/issues/10368
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
