commit 468a12a4547ccfc3f89097c688258f8454557a42
Author: Mikołaj Świątek <mswiatek@sumologic.com>
Date:   Mon Aug 1 21:53:58 2022 +0000

    [exporterhelper] Make the in-memory and persistent queues more consistent (#5764)
    
    * [exporterhelper] Use consistent names for both queue types
    
    * [exporterhelper] Add requeuing support to in-memory queue
    
    * [exporterhelper] More tests for persistent queue config
    
    * Add changelog entry
    
    * Update queued_retry_inmemory.go
    
    * Update queued_retry_inmemory.go
    
    Co-authored-by: Przemek Maciolek <pmaciolek@sumologic.com>
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
