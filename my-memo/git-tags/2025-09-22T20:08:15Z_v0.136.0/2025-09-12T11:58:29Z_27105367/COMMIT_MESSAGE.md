commit 271053675dae96e2e8a4aefe9f0e2deeb083e3b4
Author: Andrew Wilkins <axw@elastic.co>
Date:   Fri Sep 12 19:58:29 2025 +0800

    [chore] service/telemetry: split providers interface back apart (#13739)
    
    #### Description
    
    Split the monolithic Providers interface back into signal-specific
    interfaces and associated factory methods. This will enable the Factory
    interface to be expanded over time, without breaking changes. This
    should be the last major interface refactor for telemetry
    :crossed_fingers:
    
    #### Link to tracking issue
    
    Fixes #13722
    
    #### Testing
    
    N/A
    
    #### Documentation
    
    N/A
