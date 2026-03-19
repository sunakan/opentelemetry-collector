commit 5edca32899627ae39d3198370c8537c6cc946a79
Author: rghetia <rahulpa@google.com>
Date:   Wed Aug 28 07:02:33 2019 -0700

    Add include_filter configuration to prometheus receiver (#298)
    
    * add include_filter configuration to prometheus receiver.
    
    * add test for filter configuration.
    
    * fix fmt error.
    
    * add config test.
    
    * add metricsMap type for map[string]bool
    also changed csv ot arrays.
    
    * make metricMap as type alias instead of struct.
