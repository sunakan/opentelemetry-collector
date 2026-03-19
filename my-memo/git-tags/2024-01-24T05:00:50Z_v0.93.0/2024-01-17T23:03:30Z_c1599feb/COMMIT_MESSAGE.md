commit c1599feb236a902d2582ddea57d5d3f0cf9ba4ea
Author: Antoine Toulme <antoine@toulme.name>
Date:   Wed Jan 17 15:03:30 2024 -0800

    [configtls] support setting cipher suites (#9168)
    
    **Description:**
    Add `cipher_suites` to configtls:
    Users can specify a list of cipher suites to pick from. If left blank, a
    safe default list is used.
    
    **Link to tracking Issue:**
    Fixes #8105
    
    **Testing:**
    Unit tests
    
    **Documentation:**
    godoc and README
    
    ---------
    
    Co-authored-by: Alex Boten <aboten@lightstep.com>
