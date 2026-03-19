commit 3b56bd0b5cd147349ebe7fd4a740661143b33446
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu Nov 23 11:25:55 2023 -0800

    [chore] Fix TestQueuedRetryPersistentEnabled_shutdown_dataIsRequeued (#8986)
    
    Fix flaky TestQueuedRetryPersistentEnabled_shutdown_dataIsRequeued by
    moving it to persistent queue.
    - It makes the test easy to validate given that the size of the
    persistent queue is always available even if it's closed.
    - It brings behavior closer to the name of the test
    - It removes the flakiness associated with data race specific to
    re-enqueuing to the bounded memory queue by shutdown which should be
    resolved separately once the re-enqueue option is available for the
    memory queue
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/8124
