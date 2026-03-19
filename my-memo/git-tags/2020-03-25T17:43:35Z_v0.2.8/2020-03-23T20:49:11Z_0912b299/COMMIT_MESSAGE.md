commit 0912b299ab51fa915378f09b44e19407d2294373
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Mon Mar 23 13:49:11 2020 -0700

    Improve OC metrics observability and return errors to clients (#659)
    
    * Improve OC metrics observability and return errors to clients
    
    * Make OC Trace to use value semantics internally
    
    * Make OC metrics and trace return err if next consumer returns error
    
    * Avoid logging the same error repeatdly on testbed
