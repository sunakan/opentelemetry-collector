commit 77ffe4a370df7289fbc64c56b37eb3669fddd4ba
Author: Andrew Wilkins <axw@elastic.co>
Date:   Tue Jan 27 00:59:01 2026 +0800

    configgrpc: set client info before auth (#14267)
    
    #### Description
    
    This aligns with the confighttp ordering, and ensures server
    authenticators have access to client info.
    
    #### Link to tracking issue
    
    Part of #12836
    
    #### Testing
    
    Added a test.
    
    #### Documentation
    
    None
