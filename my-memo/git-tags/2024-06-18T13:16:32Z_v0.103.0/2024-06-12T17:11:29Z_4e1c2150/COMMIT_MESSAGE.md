commit 4e1c2150b579dd0584331d1ff46e2d4e67ae5efa
Author: Carson Ip <carsonip@users.noreply.github.com>
Date:   Wed Jun 12 18:11:29 2024 +0100

    [exporterhelper] Fix small batch due to scheduling in batch sender (#10337)
    
    #### Description
    
    - Correctly keep track of bs.activeRequests, which denotes the number of
    send waiting for next sender in chain to return. This is already done
    before this PR, but in a way that is vulnerable to unfavorable goroutine
    scheduling
    - Decrease bs.activeRequests by the number of requests blocked by an
    activeBatch at once, so that it workarounds the "bug" mentioned in (1).
    
    
    #### Link to tracking issue
    Fixes #9952
    
    ---------
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
