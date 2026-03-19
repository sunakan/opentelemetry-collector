commit 07a0face4b91e7a3953b1bfee53a030159d690e1
Author: Przemek Maciolek <58699843+pmm-sumo@users.noreply.github.com>
Date:   Mon Feb 22 19:50:24 2021 +0100

    Add cors_allowed_headers option to confighttp (#2454)
    
    * Add cors_allowed_headers option to confighttp
    
    * Enable CORS only when origin is defined
    
    * Remove WithLogger option
    
    The capability is out of scope of the PR
