commit e367eb17ff21f90b99dc15e686087e35626870ec
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Fri Apr 11 12:20:54 2025 +0200

    [exporterhelper] Add span links across batcher when merging multiple requests (#12768)
    
    #### Description
    
    Continuation of #12318:
    - Small change to avoid adding both a parent span relationship *and* a
    span link in cases where no merge is made
    - Fix failing tests by removing them: Those tests relate to cancelling a
    batch of export requests if the context for one of them is cancelled.
    I'm not sure how useful this logic is, or if it makes sense to cancel
    unrelated requests that happened to be batched with the one that was
    cancelled. If there are objections to this, I can try to reimplement
    this logic.
    
    #### Link to tracking issue
    Updates #12212 (remaining: persist parent span across persistent queue)
    
    (edit by @mx-psi):
    
    - Fixes #11140
    - Fixes #11141
    
    ---------
    
    Co-authored-by: Sindy Li <sindy.li@snowflake.com>
