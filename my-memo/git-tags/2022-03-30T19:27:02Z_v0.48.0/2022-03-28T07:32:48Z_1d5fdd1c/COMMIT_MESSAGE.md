commit 1d5fdd1c1f45df639a670c7722945508093e63dc
Author: Alex Boten <aboten@lightstep.com>
Date:   Mon Mar 28 00:32:48 2022 -0700

    Deprecation of pdata methods following OTLP v0.15.0 (#5076)
    
    * Deprecation of pdata methods following OTLP v0.15.0
    
    Adding deprecation methods for the following pdata methods:
      - InstrumentationLibrary is now Scope
      - InstrumentationLibrarySpans is now ScopeSpans
      - InstrumentationLibraryLogs is now ScopeLogs
      - InstrumentationLibraryMetrics is now ScopeMetrics
    
    * update changelog
    
    * add deprecated method on resource spans/metrics/logs
    
    * add InstrumentationLibrary deprecation method
