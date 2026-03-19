commit 8bed97af581435862c13e2e9ff6aeef9dd847a33
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Mon Mar 16 16:25:26 2020 -0700

    Disable usage msg after Start and suppress known errors from loggingexporter (#638)
    
    Two fit and finish issues on this change:
    - With the improved shutdown merged recently the Collector started to show error messages on shutdown.
    - Call to Sync on loggingexporter generates non-actionable error messages.
