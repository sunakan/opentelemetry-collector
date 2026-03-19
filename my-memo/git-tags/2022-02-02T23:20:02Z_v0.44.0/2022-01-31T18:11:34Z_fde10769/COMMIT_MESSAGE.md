commit fde107698b4aa6ecad7fe0fe949495a7cacd4095
Author: Joseph Woodward <joseph.woodward@xeuse.com>
Date:   Mon Jan 31 18:11:34 2022 +0000

    Handle unsupported requests (#4735)
    
    * Add failing test
    
    * Add fallback handler for unmatched requests for logs and metrics
    
    * Add tests
    
    * Return error on invalid method
    
    * Ensure text/plain response type
    
    * Handle GET requests
    
    * Fix err shadowing
    
    * Add handling of unsupported requests to changelog
