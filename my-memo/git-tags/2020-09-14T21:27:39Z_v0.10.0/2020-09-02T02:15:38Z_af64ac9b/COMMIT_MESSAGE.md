commit af64ac9b689c16390e3ee9cf216f0edaede10df9
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Sep 1 19:15:38 2020 -0700

    Fix oneof getters, avoid returning new objects. (#1717)
    
    Avoid returning new objects which are not connected with the parent metric, this way if calling InitEmpty or changing anything we change the right metric.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
