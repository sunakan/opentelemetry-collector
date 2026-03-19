commit c9603965619c3b6bf36ef0fdb95e3e0ddee4cf23
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Mon Oct 1 21:37:52 2018 -0700

    interceptor/opencensus: support multiplexing in Export
    
    Add multiplexing/"pass through" mode where spans from
    sources other than the initiating node can be sent
    and they should be properly proxied to their final
    destination. If the currently received node is nil,
    use the previously received and non-nil node, and after
    processing spans, memoize the last received node.
    Updated the tests to lock-in this behavior.
    
    This change also adds in tests to ensure this behavior
    and to avoid regressions in the future.
    
    Fixes #43
