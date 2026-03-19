commit e479242ac73905eba2f253274d9a4e765425dde6
Author: Daniel Dyla <dyladan@users.noreply.github.com>
Date:   Tue Feb 9 15:28:23 2021 -0500

    Support max batch size for metrics (#2422)
    
    * Support max batch size for metrics
    
    * send batch max supported by trace and metric
    
    * Avoid extra allocations
