commit ab843b20c2fb0ff6f237647f96e1f1c3740ad7a3
Author: Ben Keith <benkeith@splunk.com>
Date:   Tue Nov 3 13:00:41 2020 -0500

    batchprocessor: Fix shutdown race (#1967)
    
    The newItem channel cannot be closed ever since Shutdown is not
    guaranteed to be called after all Consume* calls to the same processor.
    
    Even after Shutdown is finished, there is not hard guarantee that
    nothing will ever call Consume*, so we need to just leave the channel
    open until GC will clean it up.
