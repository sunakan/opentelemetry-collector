commit 920cf9d6052c7f346224dd2d17cebd831185a7b2
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Tue Dec 19 15:36:40 2023 -0700

    [confignet] Add DialerTimeout config option (#9066)
    
    **Description:**
    Adds a new `dialer_timeout` config option to `confignet` to allow
    configuring the timeout of the connection.
    
    **Link to tracking Issue:**
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/4331
    
    **Testing:**
    Added new unit tests
    
    **Documentation:**
    Updated readme
