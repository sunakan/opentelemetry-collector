commit c1c8b131f7631758976a2dc2296f7f6e2607dbf3
Author: Andrew Wilkins <axw@elastic.co>
Date:   Fri Oct 10 15:44:35 2025 +0800

    [chore] Fix check-codeowners workflow (#13987)
    
    #### Description
    
    Update the check-codeowners workflow to use the `make
    generate-codeowners` target rather than invoking the githubgen tool
    directly.
    
    #### Link to tracking issue
    
    Fixes the check-codeowners workflow to align with
    https://github.com/open-telemetry/opentelemetry-collector/pull/13906
    
    #### Testing
    
    N/A
    
    #### Documentation
    
    N/A
