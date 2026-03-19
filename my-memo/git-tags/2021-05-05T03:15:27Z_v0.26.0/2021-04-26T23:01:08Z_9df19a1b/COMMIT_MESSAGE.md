commit 9df19a1b459d9f21d0ec4958dd606e82a4f31224
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Apr 26 16:01:08 2021 -0700

    Fix batchprocessor to avoid reordering and send max size (#3029)
    
    * The reordering could happen if during processing of an item other items were added to the newItems channel. This is fixed by avoiding to re-add the left items to the channel.
    * The logic of spliting was wrong by forcing sendBatchSize instead of sendBatchMaxSize when split was called.
    * Fix logic if a very large message is received > 2x sendBatchMaxSize to call export multiple times instead of once and reset the timer.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
