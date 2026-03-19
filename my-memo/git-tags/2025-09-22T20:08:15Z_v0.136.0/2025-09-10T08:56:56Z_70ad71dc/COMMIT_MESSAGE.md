commit 70ad71dc21b064d9df137aedcd1c3ed543e95e1d
Author: Andrew Wilkins <axw@elastic.co>
Date:   Wed Sep 10 16:56:56 2025 +0800

    otelcol: use sync.Once in Shutdown (#13741)
    
    #### Description
    
    Make sure that Shutdown closes the shutdown channel at most once, but
    don't use the collector state to determine this. That's because the
    state may be "closing" during a config reload.
    
    #### Link to tracking issue
    
    Fixes #13740
    
    #### Testing
    
    Applied diff in the linked issue, does not trigger the bug anymore.
    
    #### Documentation
    
    N/A
    
    ---------
    
    Co-authored-by: Andrzej Stencel <andrzej.stencel@elastic.co>
