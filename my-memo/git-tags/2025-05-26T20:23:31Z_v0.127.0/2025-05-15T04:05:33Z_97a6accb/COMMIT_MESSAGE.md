commit 97a6accbc0824bc2c27a05c89ff81b82d31fafd6
Author: Andrew Wilkins <axw@elastic.co>
Date:   Wed May 14 21:05:33 2025 -0700

    [chore] exporter/exporterhelper: remove outdated warning (#12930)
    
    #### Description
    
    The warning does not appear to be relevant any more. It comes from a
    time when the package provided a factory, and I assume it was warning
    against using that factory directly within the service pipeline, as
    opposed to indirectly from another exporter.
    
    #### Link to tracking issue
    
    N/A
    
    #### Testing
    
    N/A
    
    #### Documentation
    
    N/A
