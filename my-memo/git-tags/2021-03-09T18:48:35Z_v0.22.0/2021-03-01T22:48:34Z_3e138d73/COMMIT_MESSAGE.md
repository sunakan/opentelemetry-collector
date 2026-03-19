commit 3e138d73b3c44928045046211da421810703fd15
Author: Lev Popov <leo@nabam.net>
Date:   Mon Mar 1 23:48:34 2021 +0100

    Reimplement prometheus exporter (#2393)
    
    * reimplement prometheus exporter
    
    * represent non monotonic sum as gauge
    
    * clean up
    
    * update factory
    
    * reorganize package
    
    * shorten values signature
    
    * add tests
    
    * more test coverage
    
    * more test coverage, fix sanitize bug
    
    * test collection of counters and gauges
    
    * simplify
    
    * add obsreport to exporter
    
    * migrate to latest pdata timestamp api
    
    * reflect PR feedback, introduce accumulator
    
    * unexport types, rename helper
