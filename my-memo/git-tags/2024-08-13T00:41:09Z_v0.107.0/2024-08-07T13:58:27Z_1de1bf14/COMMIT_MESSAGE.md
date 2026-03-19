commit 1de1bf14e3b966330e45e55ce30f48d564f474f3
Author: AdamKorcz <44787359+AdamKorcz@users.noreply.github.com>
Date:   Wed Aug 7 14:58:27 2024 +0100

    add fuzz test for receiver (#10790)
    
    Adds a fuzz test for the 3 exposed handlers of the receiver:
    `handleTraces`, `handleMetrics`, `handleLogs`. The fuzzer decides which
    content type header to set an also which of the handlers to invoke.
    
    Signed-off-by: Adam Korczynski <adam@adalogics.com>
