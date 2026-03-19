commit 6603e5bb846d2a7d7e59cfe83fcbc62a8a81c623
Author: Yang Hu <yhuz@amazon.com>
Date:   Fri Aug 14 18:55:03 2020 -0500

    Add a ‘Headers’ field in HTTPClientSettings (#1552)
    
    * Add headers in HTTPClientSettings
    
    * add helper
    
    * Revert "add helper"
    
    This reverts commit 394f94f8e1c5dae11d67166030fcb718da665862.
    
    * remove testutil_test
    
    * add interceptor only when there are headers
    
    * add documentation
    
    fix TestAllHTTPClientSettings
