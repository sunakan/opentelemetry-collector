commit 9a83b0aa4471ddda501afcfbbdd836a0046360c0
Author: Arjun Mahishi <arjun.mahishi@gmail.com>
Date:   Thu Feb 29 10:27:43 2024 +0530

    [configtls] Rename config structs for consistency (#9495)
    
    **Description:**
    Simply renames a few structs in the `configtls` package for consistence.
    
    `TLSClientSetting` to `ClientConfig`
    `TLSServerSetting` to `ServerConfig`
    `TLSSetting` to `Config`
    
    **Link to tracking Issue:** Fixes #9474
