commit a3e6e6df4bd741b1b93c3bdc3a8f2d5b0bf89a5f
Author: Mike Goldsmith <goldsmith.mike@gmail.com>
Date:   Thu Aug 15 18:16:48 2024 +0100

    [mdatagen] Only include context import when needed (#10884)
    
    #### Description
    
    Updates the generated_telemetry and generated_metrics files to only
    include the context import when there are async metrics.
    
    #### Link to tracking issue
    
    - Closes #10883
    
    #### Testing
    
    Added unit test to verify expected behaviour.
