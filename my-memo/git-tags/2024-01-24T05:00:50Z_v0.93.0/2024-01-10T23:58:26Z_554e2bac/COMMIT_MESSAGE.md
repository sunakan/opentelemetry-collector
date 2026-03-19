commit 554e2bac4f628197105d7d5c0290217878421645
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed Jan 10 16:58:26 2024 -0700

    [confignet] Remove deprecated confignet functions (#9258)
    
    Instead of completely removing `Dial` and `Listen`, renames
    `DialContext` and `ListenContext` to `Dial` and `Listen` and deprecates
    `DialContext` and `ListenContext`.
    
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/9105
    
    Updated tests
