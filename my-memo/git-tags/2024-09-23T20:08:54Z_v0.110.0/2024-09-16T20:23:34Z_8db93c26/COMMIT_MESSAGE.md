commit 8db93c260d6223e96779ea21fd90b531c46bcbe7
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Sep 16 13:23:34 2024 -0700

    [pdata]: Add support to MoveTo for Map, allow avoiding copies (#11175)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Can be used to remove unnecessary copies from places like
    https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/c52a9a7ae1563127254530d416a8c569c54750bd/pkg/ottl/ottlfuncs/func_replace_all_patterns.go#L100
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
