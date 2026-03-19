commit c0deae5d7933b751ae55e876ffe675e63266087a
Author: Mikołaj Świątek <mail+sumo@mikolajswiatek.com>
Date:   Mon Nov 27 01:35:44 2023 +0100

    [exporterhelper] Fix invalid write index updates in the persistent queue (#8963)
    
    **Description:**
    Fixing a bug where the in-memory value of the persistent queue's write
    index would be updated even if writing to the storage failed. This
    normally wouldn't have any negative effect other than inflating the
    queue size temporarily, as the read loop would simply skip over the
    nonexistent record. However, in the case where the storage doesn't have
    any available space, the in-memory and in-storage write index could
    become significantly different, at which point a collector restart would
    leave the queue in an inconsistent state.
    
    Worth noting that the same issue affects reading from the queue, but in
    that case the writes are very small, and in practice the storage will
    almost always have enough space to carry them out.
    
    **Link to tracking Issue:** #8115
    
    **Testing:**
    The `TestPersistentQueue_StorageFull` test actually only passed by
    accident. Writing would leave one additional item in the put channel,
    then the first read would fail (as there is not enough space to do the
    read index and dispatched items writes), but subsequent reads would
    succeed, so the bugs would cancel out. I modified this test to check for
    the number of items in the queue after inserting them, and also to
    expect one fewer item to be returned.
