commit 3d3d08778d7007276e7676a9f19d7a4df5c53346
Author: Andrew Wilkins <axw@elastic.co>
Date:   Thu Aug 28 17:30:41 2025 +0800

    [chore] service/telemetry: introduce Factory interface (#13725)
    
    #### Description
    
    Introduce a new Factory interface for constructing telemetry providers.
    This will enable overriding telemetry providers in a followup. The
    Factory interface is likely to change in a followup, see
    https://github.com/open-telemetry/opentelemetry-collector/issues/13722
    
    #### Link to tracking issue
    
    Part of #4970
    
    #### Testing
    
    Unit tests added.
    
    #### Documentation
    
    N/A
