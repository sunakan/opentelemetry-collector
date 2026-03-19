commit 49c5b6fafeb94d3b8fb74db3e4f3a235d239f031
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed Dec 20 16:27:16 2023 -0700

    [confignet] Add new functions that take Context (#9163)
    
    **Description:**
    Deprecates the `Dial` and `Listen` functions in favor of `DialContext`
    and `ListenContext`.
    
    **Link to tracking Issue:**
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/9105
    
    **Testing:**
    Updated unit tests
    
    **Documentation:**
    Added godoc comments
