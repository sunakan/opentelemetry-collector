commit 0d2f64624bbc4edd2d4bc3a3abd679ff09e1a449
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Sun Feb 16 17:41:10 2025 -0800

    Update queue size after the element is done exported (#12399)
    
    This PR changes when the size of the queues is updated, previously the
    size was updated when the element was removed from the queue but before
    was fully consumed (done callback was called), after this PR the size is
    updated when done callback is called.
    
    This change ensures that the queue size limit applies to the whole
    exporter and allows better memory control for the users.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
