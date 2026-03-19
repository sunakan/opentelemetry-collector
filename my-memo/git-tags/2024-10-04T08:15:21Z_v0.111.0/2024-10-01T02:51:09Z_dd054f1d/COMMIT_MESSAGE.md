commit dd054f1d5f94bf6cc5a8c8409df583a65e4f67c1
Author: Joshua MacDonald <jmacd@users.noreply.github.com>
Date:   Mon Sep 30 19:51:09 2024 -0700

    (batchprocessor): Multi/single-shard consistent start method and field names (#11314)
    
    #### Description
    There are two implementations of the `batcher` interface with several
    inconsistencies. Notably, the single-shard case would start a goroutine
    before `Start()` is called, which can be confusing when the goroutine
    leak checker notices it. This makes the single-shard batcher wait until
    Start() to create its single shard. A confusing field name `batcher` in
    this case becomes `single`, and a new field is added for use in start
    named `processor` to create the new shard.
    
    For the multi-shard batcher, `start()` does nothing, but this structure
    confusingly embeds the batchProcessor. Rename the field `processor` for
    consistency with the single-shard case.
    
    #### Link to tracking issue
    Part of #11308.
