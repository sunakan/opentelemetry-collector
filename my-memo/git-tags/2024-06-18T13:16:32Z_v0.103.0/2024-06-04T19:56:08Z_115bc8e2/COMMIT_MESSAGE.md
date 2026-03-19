commit 115bc8e28e009ca93565dc4deb4cf6608fa63622
Author: Carson Ip <carsonip@users.noreply.github.com>
Date:   Tue Jun 4 20:56:08 2024 +0100

    [exporterhelper] Fix shutdown hang on unstarted exporter (#10313)
    
    #### Description
    
    Fix a bug where shutdown hangs if batch_sender exporter is not started.
    The bug causes generated component tests to fail as well.
    
    #### Link to tracking issue
    
    Fixes #10306
