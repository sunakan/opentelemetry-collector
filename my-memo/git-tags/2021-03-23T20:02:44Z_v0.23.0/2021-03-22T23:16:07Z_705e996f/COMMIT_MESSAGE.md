commit 705e996fbea75270aba22d30339b442d511b0680
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Mon Mar 22 16:16:07 2021 -0700

    Allow multiple OTLP to be created (#2743)
    
    * Allow multiple OTLP to be created
    
    * Add stop wait group to ensure proper shutdown
    
    * Fix lifecycle test
    
    * Rename shutdown WaitGroup
    
    * Remove local lifecycle test, use the defaultcomponents one
    
    * Remove shutdown receiver and undo register function changes
    
    * Left over from previous interaction
    
    * Add comments on removing receiver from map
