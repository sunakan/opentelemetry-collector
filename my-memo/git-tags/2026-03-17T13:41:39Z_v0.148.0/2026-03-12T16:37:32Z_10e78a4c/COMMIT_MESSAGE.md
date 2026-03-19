commit 10e78a4c75560ae106a3cb3a1e5b1edabc684fd8
Author: Dale Yarborough <developer@frieswthat.com>
Date:   Thu Mar 12 11:37:32 2026 -0500

    [chore] Standardize initialism casing in test function names (#14757)
    
    Rename test functions to follow Go conventions for initialisms:
    - Http -> HTTP
    - Url -> URL
    - Json -> JSON
    
    This is a non breaking change affecting only test function names, per
    guidance to start with changes that won't break backwards compatibility
    in exposed APIs.
    
    Exported API changes (e.g., `SchemaUrl`, `TraceId`) may be addressed in
    a follow up PR pending guidance on the deprecation approach.
    
    #### Description
    
    Standardize initialism casing in test, benchmark, and fuzz function
    names across 8 files.
    
    #### Link to tracking issue
    
    Ref #14639
    
    #### Testing
    
    All renamed tests pass locally.
    
    #### Documentation
    
    N/A - internal test changes only.
