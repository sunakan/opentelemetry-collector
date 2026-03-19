commit 892d07dffbb8dc639114bc0c340dfd4fc5293258
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Dec 16 21:06:11 2022 +0100

    [confighttp] Change Headers field type to have opaque values (#6637)
    
    * [confighttp] Deprecate Headers field in favor of OpaqueHeaders
    
    * Set Headers to non-nil to avoid contrib tests failure
    
    * Do a breaking change in one step
