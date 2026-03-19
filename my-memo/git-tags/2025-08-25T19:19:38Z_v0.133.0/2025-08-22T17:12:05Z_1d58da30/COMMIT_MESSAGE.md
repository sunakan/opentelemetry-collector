commit 1d58da30d5c99865677795d3ee92a36103daca36
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Aug 22 10:12:05 2025 -0700

    Implement refcounting for pipeline data owned memory (#13650)
    
    This feature is protected by the beta featuregate
    `pdata.enableRefCounting` so that if unexpected problems occur to have a
    simple way to disable the problematic logic. If nothing goes wrong for 2
    versions this featuregate will be marked as stable.
    
    Updates
    https://github.com/open-telemetry/opentelemetry-collector/issues/13631
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
