commit 215746930e6ef0272573970aaf8f503c67e7ebab
Author: Paulo Janotti <paulo@omnition.io>
Date:   Fri May 24 09:49:56 2019 -0700

    OC exporter: new configuration settings and use first available worker (#555)
    
    * Add new OC exporter configuration settings
    
    Adding the new configuration settings now exposed by the oc-agent exporter:
    
    - keepalive
    - reconnection delay
    
    Plus an option, secure, to use system cert pool (useful for https with well-known CAs).
    
    Improve error messages
    
    Using first available oc exporter instead of round robin
    
    Adding test covering stop
    
    Fix stop issue
    
    * Add comments to keepalive settings example
    
    * Add errAlreadyStopped if data reaches exporter after stop
