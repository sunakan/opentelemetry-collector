commit 2603c505abd1c303bfcea918246c47cdc995e3cf
Author: Steven Karis <skaris@omnition.io>
Date:   Fri Feb 15 12:53:46 2019 -0800

    Improve oc-receiver and oc-exporter span throughput (#395)
    
    * Improve oc-receiver and oc-exporter span throughput
    
    OC collector reception and export of spans did not scale up. This change
    removes the `bundler` from the oc span receiver in favor of go-routines,
    and additionally adds a worker count to the oc-exporter.
    
    * fix lint
    
    * PR comments
    
    * PR comments
    
    * Finish removal of unused options
    
    * Update cached test
