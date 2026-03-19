commit 725021f804a6f5852ca489eebff4bf9e9a6d5a30
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Thu Mar 25 14:01:22 2021 -0700

    Add watcher to values retrieved via config sources (#2803)
    
    * Add a watcher for configuration source objects
    
    * Rename Apply to Retrieve and change return type
    
    * Add Watcher and a RetrieveEnd method
    
    * Remove Watcher interface in favor of a method
    
    * Add ErrSessionClosed
    
    * Move var to top
