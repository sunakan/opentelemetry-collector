commit 7ec38e5c1992da98d832a048e2eb0da8065bbed5
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Mon Dec 11 10:04:37 2023 -0800

    Fanout consumer does not need to mutate in some cases (#9062)
    
    Follow up to
    https://github.com/open-telemetry/opentelemetry-collector/pull/9053.
    
    @dmitryax pointed out
    [here](https://github.com/open-telemetry/opentelemetry-collector/pull/9053#discussion_r1420871665)
    that the fanout consumer will pass original data to a non-mutating
    consumer if any is available. This PR incorporates that point and
    updates test expectations accordingly.
