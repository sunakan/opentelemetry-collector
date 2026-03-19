commit 06424935fda1b1e07171ae20f6cde3da02e54e27
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Mon Apr 15 11:21:32 2024 -0600

    [configtls] Add NewDefault* funcs (#9658)
    
    Adds new `NewDefault*` funcs for all 3 config structs.
    
    In anticipation of the name changes from
    https://github.com/open-telemetry/opentelemetry-collector/pull/9495 I've
    named the functions using the new, preferred name.
    
    Closes https://github.com/open-telemetry/opentelemetry-collector/issues/9657
