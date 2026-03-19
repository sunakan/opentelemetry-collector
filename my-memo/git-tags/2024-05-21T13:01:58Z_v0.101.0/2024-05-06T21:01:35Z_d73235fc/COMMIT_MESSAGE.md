commit d73235fc9104fdc10f930c36bcf122c7a5bd162c
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Mon May 6 14:01:35 2024 -0700

    [mdatagen] use mdatagen to produce component internal telemetry (#10054)
    
    #### Description
    
    This updates mdatagen to generate internal telemetry for components
    based on metadata.yaml configuration.
    
    #### Testing
    
    Added tests to mdatagen and updated the batch processor to use this as
    well for synchronous counters and histogram
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
