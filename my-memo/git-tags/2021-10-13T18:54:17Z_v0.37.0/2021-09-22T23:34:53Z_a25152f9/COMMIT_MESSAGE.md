commit a25152f983754b0386b4e68206bdff9e0053ceb4
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Wed Sep 22 16:34:53 2021 -0700

    Update config sources manager (fixes/changes)  (#3687)
    
    Upstream the changes and fixes for the manager done on the Splunk distribution plus changes to support config sources to be used as parameters of other config source invocations.
    
    The change to the Retrieve method allows data from config sources to be passed as parameters to other config sources, allowing for "second order" config sources that can combine/merge configuration from different sources. This will be used to implement a "merge" config source.
