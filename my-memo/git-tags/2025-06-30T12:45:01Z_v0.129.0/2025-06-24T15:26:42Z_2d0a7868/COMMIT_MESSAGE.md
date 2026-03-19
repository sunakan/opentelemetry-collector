commit 2d0a78683dd5ccd7038906a38498be7baf05c5a7
Author: Andrzej Stencel <andrzej.stencel@elastic.co>
Date:   Tue Jun 24 17:26:42 2025 +0200

    [chore] [processor/batch] docs: stop recommending Batch processor (#13191)
    
    Removes the sentence in Batch processor docs recommending using the
    component on every collector.
    
    This implements one of the points proposed in:
    
    - https://github.com/open-telemetry/opentelemetry-collector/issues/12443
    
    > - Stop recommending to configure the Batch processor on every
    collector pipeline.
