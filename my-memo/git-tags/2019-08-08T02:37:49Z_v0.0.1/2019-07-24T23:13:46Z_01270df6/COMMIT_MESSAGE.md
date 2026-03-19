commit 01270df65811279c03b1ac392af5618c0d2a8819
Author: Constance Caramanolis <c.caramanolis@gmail.com>
Date:   Wed Jul 24 16:13:46 2019 -0700

    OC To Jaeger -> Do not add duplicate "span.kind" tag (#189)
    
    * Fix CLA - i hope
    
    * Address comments and refactor to use map for key look up vs list iteration.
    
    * Address comments and create helper method for key existance check.
