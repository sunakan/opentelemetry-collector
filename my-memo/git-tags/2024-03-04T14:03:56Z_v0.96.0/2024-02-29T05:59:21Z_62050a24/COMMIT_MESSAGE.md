commit 62050a241a696749d74643e9bec11c10f5c1cbeb
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Wed Feb 28 21:59:21 2024 -0800

    [configtls] add include_system_ca_certs_pool (#9142)
    
    **Description:**
    Add `include_system_ca_certs_pool` to configtls, allowing to load system
    certs and additional custom certs.
    
    **Link to tracking Issue:**
    Fixes #7774
