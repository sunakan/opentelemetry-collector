commit 4a5809293b286f39d1508e69e760e4b00d5da7eb
Author: Curtis Robert <crobert@splunk.com>
Date:   Fri Apr 19 04:48:32 2024 -0700

    [confmap] Return error when decoding negative values into uints (#9169)
    
    **Description:**
    This adds a decode hook for unmarshalling negative integers into uint
    types. This will now return an error instead of converting negative
    values into large uint values.
    
    **Link to tracking Issue:** <Issue number if applicable>
    Fixes #9060
    
    **Testing:**
    Added unit tests for confmap functionality, functional tests in memory
    limiter processor (the original component this issue was filed against)
