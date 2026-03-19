commit 8d3fe01ff6ebabc1d18e30576affa43ccad339a3
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Feb 6 08:50:29 2025 -0800

    Clarify that data cannot be accessed after Consume* func is called (#12284)
    
    The problem here is that we have components like batchprocessor or
    others which are keeping a reference of the data and eventually
    modifying them without any concurrent access protection. Hence, it is
    required for the callers to not access any data that were passed
    downstream.
    
    This is not a backwards incompatible change, since pdata is not
    thread-safe this is a MUST to have here (consider a bug for not being
    documented) otherwise things will not work in the processing pipelines.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
