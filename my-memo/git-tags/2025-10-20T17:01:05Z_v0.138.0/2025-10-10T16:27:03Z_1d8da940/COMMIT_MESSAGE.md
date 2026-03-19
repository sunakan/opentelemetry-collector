commit 1d8da940c4489db034ebf0316f96844a07e01448
Author: Vishal Raj <vishal.raj@elastic.co>
Date:   Fri Oct 10 17:27:03 2025 +0100

    Expose MergeCtx via exporterhelper#QueueBatchSettings (#13742)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Exposes the `MergeCtx` function introduced in
    https://github.com/open-telemetry/opentelemetry-collector/pull/13460/files
    to `exporterhelper#QueueBatchSettings`. This will allow configuring the
    merge context function using `exporterhelper#WithQueueBatch`.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Related to #13320
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    N/A
    
    <!--Describe the documentation added.-->
    #### Documentation
    N/A
    
    <!--Please delete paragraphs that you did not use before submitting.-->
