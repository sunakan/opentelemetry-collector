commit 9aaa2ea4066c87fcfc5403aee3b55e3d2e57222e
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Thu Apr 22 16:34:43 2021 -0700

    Logging exporter ignore invalid handle on close (#2994)
    
    * Logging exporter shutdown: ignore invalid handle error.
    
    * Separate Windows and non-Windows code
    
    * Fix imports
