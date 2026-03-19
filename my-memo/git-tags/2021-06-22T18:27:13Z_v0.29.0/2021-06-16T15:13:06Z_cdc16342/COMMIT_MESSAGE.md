commit cdc163427b8e29af4170814e0a1c7300ea506692
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Wed Jun 16 18:13:06 2021 +0300

    receiver/prometheus: add store to track stale metrics (#3414)
    
    Implements a simple store that will be used to record stale metrics;
    those that are NOT present in the current scrape, but were in the prior
    scrape. This logic will then be attached to our receiver logic
    to then complete the mechanism and then issue stale markers.
    
    Updates #3413
    Updates #2961
