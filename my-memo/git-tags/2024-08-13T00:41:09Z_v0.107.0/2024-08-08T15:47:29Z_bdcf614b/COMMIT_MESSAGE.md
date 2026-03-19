commit bdcf614b2144b1562859fd8a1922e97151943a7c
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Thu Aug 8 08:47:29 2024 -0700

    [chore] Release ports on the dynamic range on Windows runners (#10839)
    
    #### Description
    The default port used by `zpagesextension` is in a range that Windows
    machines can exclude by default. This change adds a PowerShell script to
    release the default `zpagesextension` port (55679) on the Windows GH
    workflows.
    
    #### Link to tracking issue
    Fixes #10811
