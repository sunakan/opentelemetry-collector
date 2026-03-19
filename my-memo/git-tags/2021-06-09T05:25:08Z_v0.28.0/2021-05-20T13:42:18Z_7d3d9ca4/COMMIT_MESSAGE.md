commit 7d3d9ca4c9a5b5ad80b671e4482af663fc724bea
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Thu May 20 15:42:18 2021 +0200

    Improve test failure logging for TestBallastMemory (#3240)
    
    This change improves the failure message for the TestBallastMemory. While this won't solve the problem, it will help understand if we are barely above the limit, or if the test went considerably above the max.
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
