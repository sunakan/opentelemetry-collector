commit 8fde60e23a780aba99b1b49ceaa2398e8a4402cf
Author: Steven Karis <skaris@omnition.io>
Date:   Tue Jan 8 14:55:34 2019 -0800

    Add healthcheck http server to collector service (#297)
    
    healthcheck runs by default on port 13133 and is configurable with --health-check-http-port <port_num>.
    
    Issue:#290
    
    Testing Done: manually
