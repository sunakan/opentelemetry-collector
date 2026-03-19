commit 2c5eb7ca1ad5e95c8c6bd1240c7173978954924a
Author: Alex Boten <aboten@lightstep.com>
Date:   Fri Jan 21 13:01:29 2022 -0800

    ensure windows file path is respected (#4726)
    
    * ensure windows file path is respected
    
    The current --config flag breaks backwards compatibility for Windows users as a common path is to use is C: as is used in the collector-contrib MSI for example.
    
    * use single character instead of hardcoded C
    
    * update changelog
