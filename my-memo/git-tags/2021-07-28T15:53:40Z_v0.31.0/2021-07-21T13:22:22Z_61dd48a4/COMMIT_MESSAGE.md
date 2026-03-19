commit 61dd48a4a90d13692922efa06e9254f8114e638c
Author: Thomas Barker <tbarker25@gmail.com>
Date:   Wed Jul 21 13:22:22 2021 +0000

    Handle errors when reloading service (#3615)
    
    The collector hangs when reloading the service fails. This change will cause the collector fail with a fatal error if it can't be reloaded.
    
    Example:
    * Load the collector with a valid config
    * Config changed to an invalid config
    * Reload the collector using parseprovider.Watchable
    
    Current behaviour:
    * Collector hangs in a stopped state
    
    New behaviour:
    * Collector exits with fatal error
