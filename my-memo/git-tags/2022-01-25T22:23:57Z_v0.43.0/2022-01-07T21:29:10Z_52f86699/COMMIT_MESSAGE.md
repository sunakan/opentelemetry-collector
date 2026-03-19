commit 52f866991b4bf4c07b371c043da03cb765b76bc2
Author: Alex Boten <aboten@lightstep.com>
Date:   Fri Jan 7 13:29:10 2022 -0800

    refactor: don't bother checking the level (#4601)
    
    * refactor: don't bother checking the level
    
    This simplifies the logic in SetColGRPCLogger.
    
    * ensure info level is converted to warn to avoid noisy logs
    
    * remove useless comment
