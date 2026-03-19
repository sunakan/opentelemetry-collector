commit afdb3a15129bc4c8b40efaa98233a5dd8b1f1e2f
Author: Steven Karis <skaris@omnition.io>
Date:   Tue Feb 19 16:02:05 2019 -0800

    nodebatcher: Allow batcher pre-allocations to reduce on new batch (#419)
    
    * Allow batcher pre-allocations to reduce on new batch
    
    Currently, we re-use the previous capacity size when pre-allocating
    space for the new batch in nodebatcher. This doesn't work well when a
    node has had high throughput and then stops sending traffic, or maybe
    the process that was sending a lot of traffic shifts to another node.
    This PR reduces allocation space based not just on current cap, but also
    current size to fix this.
    
    * Move comment placement
    
    * Refactor marginally
    
    * PR comments
