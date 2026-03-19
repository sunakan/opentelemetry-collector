commit 5f9704c8af30ba30457ccc136478ed75877df327
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Sun Mar 15 18:13:58 2020 -0700

    Improve obsreport receiver operations under long lived contexts (#631)
    
    * Improve obsreport receiver operations under long lived contexts
    
    Makes the handling of receive operations under long lived contexts more straightforward for obsreport users.
    
    * Remove WithAlwaysSample and change WithLongLivedCtx
    
    * Remove useAlwaysSample flag and use trace.ApplyConfig in test
    
    * Rename param and improve WithLongLivedCtx comment
    
    * Correction to the WithLongLivedCtx example
