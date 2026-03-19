commit a327d55edac5623229e0bd9261050b702251e645
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Tue Mar 26 21:08:08 2024 -0600

    [configtls] Update IncludeSystemCACertsPool to be used in server and client RootCAs (#9835)
    
    **Description:**
    Updates `ServerConfig` and `ClientConfig` to use
    `IncludeSystemCACertsPool` when doing `LoadTLSConfig`. Previously
    `IncludeSystemCACertsPool` was only used for `ServerConfig`'s
    `ClientCAs` via `newClientCAsReloader`.
    
    **Link to tracking Issue:**
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/9789
    
    **Testing:**
    Added more tests
