commit 1847c2eda72c5554b99400845306e38c582ed8c3
Author: Andrew Wilkins <axw@elastic.co>
Date:   Thu Oct 30 04:57:38 2025 +0800

    cmd/builder: set CGO_ENABLED=0 by default (#14094)
    
    #### Description
    
    Update OCB to set CGO_ENABLED=0 by default, and make it configurable
    with a new `dist::cgo_enabled` setting.
    
    #### Link to tracking issue
    
    Fixes #10028
    
    #### Testing
    
    Test added
    
    #### Documentation
    
    Updated
    
    ---------
    
    Co-authored-by: Damien Mathieu <42@dmathieu.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
