commit c177f79047a898dc9c4b6f44a47ed0ea1dbd632b
Author: Emmanuel T Odeke <odeke@ualberta.ca>
Date:   Tue Nov 27 15:17:41 2018 -0800

    exporterparser/zipkin: safely retrieve remoteEndpoint serviceName (#235)
    
    Safely retrieve the servicename for the remoteEndpoint if no
    endpoints were sent in the payload hence a nil Node.
    
    A reduction of PR #229 and originally @pjanotti's endeavor.
    
    Fixes #230
