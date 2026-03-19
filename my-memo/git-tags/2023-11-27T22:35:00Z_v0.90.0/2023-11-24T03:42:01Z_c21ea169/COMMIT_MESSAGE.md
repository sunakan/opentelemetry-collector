commit c21ea1697b32a2bbed01aa66eca91ddfa6fcb80d
Author: Berkeli Halmyradov <berkelih@gmail.com>
Date:   Fri Nov 24 03:42:01 2023 +0000

    bug: fix flaky test TestQueuedRetry_RequeuingEnabled (#8989)
    
    fixes a flaky test
    Fixing a bug - TestQueuedRetry_RequeuingEnabled has been failing
    occasionally. Upon investigation, `be.send` calls the underlying
    `observabilityConsumerSender.send` which calls `wg.Done()`, so we need
    to add `wg.Add(1)` before that
    
    Fixes #6624
    
    **Testing:** Ran the same test multiple times before/after change: `go
    test -race -run TestQueuedRetry_RequeuingEnabled -count 1000`
