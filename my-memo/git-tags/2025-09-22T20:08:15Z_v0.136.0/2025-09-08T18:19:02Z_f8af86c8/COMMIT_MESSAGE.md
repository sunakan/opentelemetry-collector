commit f8af86c89194282bb68cfa64d9d5efcb1d0d734a
Author: Areeb Ahmed <135235925+areebahmeddd@users.noreply.github.com>
Date:   Mon Sep 8 23:49:02 2025 +0530

    feat(configtls): add validation to fail fast on missing certificates (#13245)
    
    **Signed-off-by**: Areeb Ahmed
    [areebshariff@acm.org](mailto:areebshariff@acm.org)
    
    ## Summary of Changes
    
    * Enhanced `Config.Validate()` to validate certificate/key pairs and
    prevent mixed file/PEM configurations.
    * Added `ServerConfig.Validate()` to require certificates when TLS
    settings are configured.
    * Added `ClientConfig.Validate()` for a consistent validation interface.
    
    ## Related Issue(s)
    Closes #13130
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
