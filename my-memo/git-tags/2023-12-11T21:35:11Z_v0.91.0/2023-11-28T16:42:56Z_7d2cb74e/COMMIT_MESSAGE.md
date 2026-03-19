commit 7d2cb74e293e1261e3808c0db6bfc8cbeaefb0d0
Author: xu0o0 <hqcat6@gmail.com>
Date:   Wed Nov 29 00:42:56 2023 +0800

    [chore][extension] update NotifyConfig contract (#9005)
    
    **Description:**
    The collector implementation makes a copy of effective configuration
    before calling `NotifyConfig` so it's safe for the config watcher to
    save the pointer and use it later. It is resonable to promise this in
    the API contract.
    
    **Link to tracking Issue:**
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/29277#discussion_r1406522281
    
    ---------
    
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
