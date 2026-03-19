commit 3d37e53b7511eaaa29d6e950e302d3409b65552d
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Sep 3 21:28:21 2024 -0700

    Update module google.golang.org/grpc to v1.66.0 (#11034)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    | [google.golang.org/grpc](https://redirect.github.com/grpc/grpc-go) |
    `v1.65.0` -> `v1.66.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/google.golang.org%2fgrpc/v1.66.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/google.golang.org%2fgrpc/v1.66.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/google.golang.org%2fgrpc/v1.65.0/v1.66.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/google.golang.org%2fgrpc/v1.65.0/v1.66.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>grpc/grpc-go (google.golang.org/grpc)</summary>
    
    ###
    [`v1.66.0`](https://redirect.github.com/grpc/grpc-go/releases/tag/v1.66.0):
    Release 1.66.0
    
    [Compare
    Source](https://redirect.github.com/grpc/grpc-go/compare/v1.65.0...v1.66.0)
    
    ### New Features
    
    - metadata: stabilize `ValueFromIncomingContext`
    ([#&#8203;7368](https://redirect.github.com/grpc/grpc-go/issues/7368))
    - Special Thanks:
    [@&#8203;KarthikReddyPuli](https://redirect.github.com/KarthikReddyPuli)
    - client: stabilize the `WaitForStateChange` and `GetState` methods,
    which were previously experimental.
    ([#&#8203;7425](https://redirect.github.com/grpc/grpc-go/issues/7425))
    - xds: Implement ADS flow control mechanism
    ([#&#8203;7458](https://redirect.github.com/grpc/grpc-go/issues/7458))
    - See
    [https://github.com/grpc/grpc/issues/34099](https://redirect.github.com/grpc/grpc/issues/34099)
    for context.
    - balancer/rls: Add metrics for data cache and picker internals
    ([#&#8203;7484](https://redirect.github.com/grpc/grpc-go/issues/7484),
    [#&#8203;7495](https://redirect.github.com/grpc/grpc-go/issues/7495))
    - xds: LRS load reports now include the `total_issued_requests` field.
    ([#&#8203;7544](https://redirect.github.com/grpc/grpc-go/issues/7544))
    
    ### Bug Fixes
    
    - grpc: Clients now return status code INTERNAL instead of UNIMPLEMENTED
    when the server uses an unsupported compressor. This is consistent with
    the [gRPC compression
    spec](https://redirect.github.com/grpc/grpc/blob/master/doc/compression.md#compression-method-asymmetry-between-peers).
    ([#&#8203;7461](https://redirect.github.com/grpc/grpc-go/issues/7461))
    - Special Thanks:
    [@&#8203;Gayathri625](https://redirect.github.com/Gayathri625)
    - transport: Fix a bug which could result in writes busy looping when
    the underlying `conn.Write` returns errors
    ([#&#8203;7394](https://redirect.github.com/grpc/grpc-go/issues/7394))
    - Special Thanks: [@&#8203;veshij](https://redirect.github.com/veshij)
    - client: fix race that could lead to orphaned connections and
    associated resources.
    ([#&#8203;7390](https://redirect.github.com/grpc/grpc-go/issues/7390))
    - xds: use locality from the connected address for load reporting with
    pick_first
    ([#&#8203;7378](https://redirect.github.com/grpc/grpc-go/issues/7378))
    - without this fix, if a priority contains multiple localities with
    pick_first, load was reported for the wrong locality
    - client: prevent hanging during ClientConn.Close() when the network is
    unreachable
    ([#&#8203;7540](https://redirect.github.com/grpc/grpc-go/issues/7540))
    
    ### Performance Improvements
    
    - transport: double buffering is avoided when using an http connect
    proxy and the target server waits for client to send the first message.
    ([#&#8203;7424](https://redirect.github.com/grpc/grpc-go/issues/7424))
    - codec: Implement a new `Codec` which uses buffer recycling for encoded
    message
    ([#&#8203;7356](https://redirect.github.com/grpc/grpc-go/issues/7356))
    - introduce a `mem` package to facilitate buffer reuse
    ([#&#8203;7432](https://redirect.github.com/grpc/grpc-go/issues/7432))
    - Special Thanks:
    [@&#8203;PapaCharlie](https://redirect.github.com/PapaCharlie)
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "on tuesday" (UTC), Automerge - At any
    time (no schedule defined).
    
    🚦 **Automerge**: Disabled by config. Please merge this manually once you
    are satisfied.
    
    ♻ **Rebasing**: Whenever PR becomes conflicted, or you tick the
    rebase/retry checkbox.
    
    🔕 **Ignore**: Close this PR and you won't be reminded about this update
    again.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOC41OS4yIiwidXBkYXRlZEluVmVyIjoiMzguNTkuMiIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
    Co-authored-by: Yang Song <songy23@users.noreply.github.com>
