commit 709d8a822e2e28b702fa9108cffce9bc78843e99
Author: Jaana Dogan <jbd@amazon.com>
Date:   Mon May 17 16:48:19 2021 -0700

    Allow users to configure the Prometheus remote write queue (#3046)
    
    * Allow users to configure the Prometheus remote write queue
    
    * Fix lint
    
    * Fix godoc
    
    * Fix docs
    
    * Revert wait group change
    
    * Limit concurrency to the write reqs
    
    * Rename min_shards to concurrency
    
    * Renaming the queue settings
    
    * Renaming the queue settings
