commit bf83eb9d7c63ecf15a339d564c78c8fac17794ef
Author: Paulo Janotti <paulo@omnition.io>
Date:   Fri Jun 14 14:47:08 2019 -0700

    Follow golang/wiki recommendation for tool dependencies and reduce install tools set (#578)
    
    * Reduce `install-tools`
    
    Keeping only go get golang.org/x/lint/golint
    
    * Follow golang/wiki recommendation for tool dependencies
    
    This ensures that everyone is using the same version of golint, we will have to manually
    update it when appropriate.
    
    * Exclude tools/ from sources to avoid error msg
