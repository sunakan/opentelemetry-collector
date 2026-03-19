commit 34b78c8fc515fea6e96285eac0a41632b37710d0
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Tue Jan 23 09:32:35 2024 -0800

    [chore] remove hostWrapper (#9346)
    
    Remove `hostWrapper`. This internal class is only used for extensions to
    wrap a specific logger, but since we have deprecated `ReportFatalError`,
    we should no longer expect this function to be called anyway.
