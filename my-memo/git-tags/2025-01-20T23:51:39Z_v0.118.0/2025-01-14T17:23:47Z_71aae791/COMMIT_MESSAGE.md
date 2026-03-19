commit 71aae791d7f8cd6094421616af86673aeab2a51a
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Jan 14 09:23:47 2025 -0800

    Add capability for memory and persistent queue to block when add items (#12074)
    
    This functionality is not yet exposed to the user because there is no
    config available. One option to consider is to add a "blocking" bool in
    the queue config.
    
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
    https://github.com/open-telemetry/opentelemetry-collector/issues/10368
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
