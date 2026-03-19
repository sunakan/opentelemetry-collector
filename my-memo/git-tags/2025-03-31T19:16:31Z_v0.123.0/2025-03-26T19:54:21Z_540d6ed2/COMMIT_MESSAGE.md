commit 540d6ed2f795ee6634f8fce2ac4a3c2c39e3594d
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Mar 26 12:54:21 2025 -0700

    Add support for `wait_for_result`, remove disabled_queue (#12742)
    
    In this PR, we merge the functionality from "disabled_queue" within the
    memory queue. For the moment this functionality is not available for the
    persistent queue.
    
    In the next PR, will merge the `internal.QueueConfig` with
    `queuebatch.Config`.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
