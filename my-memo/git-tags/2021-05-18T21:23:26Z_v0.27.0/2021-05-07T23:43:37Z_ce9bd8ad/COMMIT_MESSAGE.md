commit ce9bd8ad017be613a40de1175d056b497583f65f
Author: Steve L <slerner@splunk.com>
Date:   Fri May 7 19:43:37 2021 -0400

    Add some basics about troubleshooting the Collector (#3033)
    
    * Add some basics about troubleshooting the Collector
    
    Added some helpful lines for troubleshooting the collector...
    
    * Add some basics about troubleshooting the Collector
    
    Add some basics about troubleshooting the Collector:
    
    To see logs for the Collector:
    
    On a Linux systemd system, logs can be found using `journalctl`:
    `journalctl | grep otelcol`
    
    or to find only errors:
    `journalctl | grep otelcol | grep Error`
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
