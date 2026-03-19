commit 56e21212afed5275fad62d6442f19cdcfb3801a9
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Thu Oct 1 19:53:51 2020 +0200

    Add metrics to groupbytraceprocessor, wait for queue to be drained during shutdown. (#1842)
    
    Fixed deadlock in groupbytrace processor.
    
    * Drain the queue upon shutdown, with a time limit. Fixes #1465.
    * Added metrics to the groupbyprocessor, making it easier to understand what's going on in case of problems. See #1811.
    * Changes the in-memory storage to unlock its RLock when the method returns. Fixes #1811.
    
    Link to tracking Issue: #1465 and #1811
    Testing: unit + manual tests
    Documentation: see README.md
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
