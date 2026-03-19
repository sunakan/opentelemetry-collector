commit 65c89d8ed7bbe2f24ab28c8e0c0879aab170dcd3
Author: Paulo Janotti <paulo@omnition.io>
Date:   Fri May 31 13:23:48 2019 -0700

    Add grpc server configs to OC receiver (#560)
    
    * Add grpc server configs to OC receiver
    
    This will be only applied to the collector since it is assumed that unlike the agent it is typically located behind some loadbalancer or proxy where these settings are more useful.
    
    * Updates to README and k8s file
