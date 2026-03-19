commit bf1a37486df404dfc1b10ec82963c70b70251f8a
Author: Adriel Perkins <adriel@adrielperkins.com>
Date:   Fri Feb 21 14:50:38 2025 -0500

    [mdatagen] fix missing resource attributes import in metrics template (#12456)
    
    #### Description
    
    Re-adds the missing import for the `ResourceAttributes` for metrics
    generation. This impacts receivers that emit resource attributes. Filter
    is still within the template code for resource attributes, but not
    imported.
    
    #### Link to tracking issue
    Fixes #12455
