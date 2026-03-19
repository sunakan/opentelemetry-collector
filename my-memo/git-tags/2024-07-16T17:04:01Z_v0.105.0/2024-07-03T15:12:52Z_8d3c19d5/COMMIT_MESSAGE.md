commit 8d3c19d55fb63d4ff4bd5181d3a0f4bb0483acf5
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Jul 3 17:12:52 2024 +0200

    [internal/localhostgate] Correctly log message about local host gate (#10529)
    
    Fixes log intended to be logged when the feature gate is enabled, not
    disabled.
    
    #### Link to tracking issue
    
    Relates to #8510, updates #10352
    
    ---------
    
    Co-authored-by: Yang Song <songy23@users.noreply.github.com>
