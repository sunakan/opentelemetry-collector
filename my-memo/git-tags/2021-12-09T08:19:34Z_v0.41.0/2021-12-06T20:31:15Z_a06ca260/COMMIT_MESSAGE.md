commit a06ca26079fe8fbf522f016149d8911c9c7b574a
Author: rrupapara <88527515+rrupapara@users.noreply.github.com>
Date:   Tue Dec 7 02:01:15 2021 +0530

    Add more config parameters to HTTPClientSettings to be used by multiple http-based exporters (#4188)
    
    * Added `MaxIdleConns`, `MaxIdleConnsPerHost` and `IdleConnTimeout` in HTTPClientSettings
    
    * Removed unnecessary validatioins form confighttp
    
    * Added MaxConnsPerHost parameter in confighttp
    
    * Changed MaxIdleConns and IdleConnTimeout parameter type to pointer variable
    
    * Modified the test case
    
    * Updated confighttp
    
    * Fixed linting
    
    * Make all new parameter type to pointer
    
    * Add DefaultHTTPClientSettings function in confighttp
