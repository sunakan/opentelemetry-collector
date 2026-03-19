commit cc66b6d02324af5550966b22cf641868cd0ef53f
Author: Andrew Wilkins <axw@elastic.co>
Date:   Fri Nov 7 19:40:00 2025 +0800

    otelcol: remove default telemetry factory (#14062)
    
    #### Description
    
    Remove the default telemetry factory, and require callers to specify
    one, to keep things maintainable.
    
    #### Link to tracking issue
    
    Fixes #14003
    
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    N/A
