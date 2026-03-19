commit a360414b69c69dcea07613797521bd7d522c85e0
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Aug 11 04:24:27 2021 -0700

    Small nit in setflag ParserProvider (#3807)
    
    This PR cuts out a few steps, including copying the map, calling IntfaceKeysToStrings, and merging the map with an empty map.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
