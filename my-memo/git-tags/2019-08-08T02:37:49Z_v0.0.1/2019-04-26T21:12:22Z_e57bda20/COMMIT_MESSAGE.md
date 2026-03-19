commit e57bda20488c925337cfab38192adedc3f3aefcb
Author: Paulo Janotti <paulo@omnition.io>
Date:   Fri Apr 26 14:12:22 2019 -0700

    Add profile fractions for Mutex and Block profiling (#529)
    
    * Add profile fractions for Mutex and Block profiling
    
    These two options need to be set in order to use the mutext contention and blocking profiling modes of pprof.
    
    * Coverage Tax 01
    
    * Check added flags
