commit ada07a5b5b59bd80fd585b2eba1d05d76fb4b7b3
Author: look <cpuflower@163.com>
Date:   Tue Aug 16 23:42:38 2022 +0800

    Implement unmarshal metrics with jsoniter (#5433)
    
    * Implement unmarshal metrics with jsoniter
    
    * Implement unmarshal metrics with jsoniter AND add test file
    
    * add unit testing
    
    * add unit testing
    
    * git rebase main
    
    * do a matrix testing for all 8 cases for a combination of these 3 bool options.
    
    * some func is deprecated
    
    * go imports
    
    * go imports
    
    * Update change log
    
    * generate the 8 cases per tested func to avoid repeating test case definition
    
    * 1. Remove instrumentationLibraryMetrics and instrumentation_library_metrics.
    
    2. Some functions move to pdata/internal/json
    
    3.Ignore unknown fields and have a debug log for them
    
    * add test unit
    
    * update CHANGELOG
    
    * remove the new API AND reuse the other API NewJSONUnmarshaler
    
    * update CHANGELOG
    
    * update CHANGELOG
    
    * go mod tidy
    
    * remove unnecessary return true on the default branch
