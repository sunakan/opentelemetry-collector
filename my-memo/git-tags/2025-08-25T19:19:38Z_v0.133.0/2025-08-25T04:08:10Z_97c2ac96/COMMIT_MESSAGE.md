commit 97c2ac9672f4980b030ee98fafb5858ab1f99434
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Sun Aug 24 21:08:10 2025 -0700

    [chore] Remove delete call after oneOf message added to the pool (#13701)
    
    Accessing the oneOf object (e.g. `Metric_Sum`) to reset the
    `Metric_Sum.Sum` after `Metric_Sum` was added back to the free pool is a
    race condition because `Metric_Sum` may already be re-used and then we
    delete something that was just added.
    
    Updates
    https://github.com/open-telemetry/opentelemetry-collector/issues/13631
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
