commit 56c7382b7b6612095bc4683ed0fce9bb21f91422
Author: JBD <jbd@amazon.com>
Date:   Tue Jul 13 11:35:19 2021 -0700

    Make graceful shutdown optional (#3577)
    
    service.Collector is handling the signal management and implementing
    a graceful shutdown. This is a problem for collectors that want to
    wire their own signal handling in cases they want to add custom logic
    and/or have resources other than the service.Collector to shutdown.
    Making the automatic shutdown an optional behavior for users who
    may need to disable it.
    
    Fixes #3490
