commit 54222b60c0bc5e995f2045e8cd94de91c90541b8
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Mar 19 09:33:29 2025 -0700

    Define the final stable config for QueueBatch component (#12660)
    
    Add this as a separate config than exporterqueue.Config until the queue
    and batcher are changed to support this new config. Once approved, will
    merge and in sub-sequent PRs will change the components to accept this
    new config and expose it to the users.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
