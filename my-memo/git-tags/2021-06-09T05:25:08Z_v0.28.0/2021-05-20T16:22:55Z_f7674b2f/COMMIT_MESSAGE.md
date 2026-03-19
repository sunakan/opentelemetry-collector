commit f7674b2f593e225d2133401ece6560386f88baa0
Author: Huy Vo <hvoam@amazon.com>
Date:   Thu May 20 12:22:55 2021 -0400

    2649 - Change receiver obsreport helpers pattern to match the Processor/Exporter (#3227)
    
    * Change Receiver to match pattern with structs and helpers
    
    * Added support for ReceiverSettings
    
    * Add receiver to end functions
    
    * Add comments for new receiver
    
    * Add entry to changelog
    
    * Cache the recevier in structs
    
    * Cache the receiver in other files
    
    * Fix name for var and fix caching
    
    * Fix caching so there is no race
    
    * Fix unit tests
    
    * Add deprecated old funcs back
    
    * Fix comments
