commit 1cf90bc022132bff7ff2f337464e6f148cb7c772
Author: Emre Yazıcı <e.yazici1990@gmail.com>
Date:   Wed Mar 4 14:53:49 2026 +0100

    [chore] prealloc maps to reduce realloc  (#14645)
    
    #### Description
    
    - Predefining the size for maps help to improve perf.
    When a map grows beyond its current capacity, Go has to perform a
    "rehash."
      - Allocating a new, larger memory block for the hash buckets.
      - Moving every existing element from the old buckets to the new ones.
      - Garbage collecting the old memory block.
    
    - Move map init from hot path. As, variable: `md` is only used in
    certain conditions, having it allocated on hot paths may lead to
    unnecessary allocations.
    Moving the initialization of the var: `md` from hot path to closer to
    where it is used, would reduce allocs on hot paths where init of md is
    not necessary.
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
