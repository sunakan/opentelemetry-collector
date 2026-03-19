commit 8e0f68261d8a27e996285c712742efc516bd7ce8
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Nov 13 11:59:47 2023 -0600

    Avoid nil queue in queue_sender, consolidate implementation (#8862)
    
    Also, fixes `WithRetry` called with a config that is disabled.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
