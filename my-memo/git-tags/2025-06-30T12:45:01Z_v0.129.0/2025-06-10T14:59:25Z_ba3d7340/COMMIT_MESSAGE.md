commit ba3d73409e404b688f2a68ff11c142d767e1045a
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jun 10 16:59:25 2025 +0200

    fix(deps): update module google.golang.org/grpc to v1.73.0 (#13187)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    | [google.golang.org/grpc](https://redirect.github.com/grpc/grpc-go) |
    `v1.72.2` -> `v1.73.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/google.golang.org%2fgrpc/v1.73.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/google.golang.org%2fgrpc/v1.73.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/google.golang.org%2fgrpc/v1.72.2/v1.73.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/google.golang.org%2fgrpc/v1.72.2/v1.73.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v1.73.0`](https://redirect.github.com/grpc/grpc-go/releases/tag/v1.73.0):
    Release 1.73.0
    
    [Compare
    Source](https://redirect.github.com/grpc/grpc-go/compare/v1.72.2...v1.73.0)
    
    ### New Features
    
    - balancer/ringhash: move LB policy from xds/internal to exported path
    to facilitate use without xds
    ([#&#8203;8249](https://redirect.github.com/grpc/grpc-go/issues/8249))
    - xds: enable least request LB policy by default. It can be disabled by
    setting `GRPC_EXPERIMENTAL_ENABLE_LEAST_REQUEST=false` in your
    environment.
    ([#&#8203;8253](https://redirect.github.com/grpc/grpc-go/issues/8253))
    - grpc: add a `CallAuthority` Call Option that can be used to overwrite
    the http `:authority` header on per-RPC basis.
    ([#&#8203;8068](https://redirect.github.com/grpc/grpc-go/issues/8068))
    - stats/opentelemetry: add trace event for name resolution delay.
    ([#&#8203;8074](https://redirect.github.com/grpc/grpc-go/issues/8074))
    - health: added `List` method to gRPC Health service.
    ([#&#8203;8155](https://redirect.github.com/grpc/grpc-go/issues/8155))
    - Special Thanks:
    [@&#8203;marcoshuck](https://redirect.github.com/marcoshuck)
    - ringhash: implement features from gRFC A76.
    ([#&#8203;8159](https://redirect.github.com/grpc/grpc-go/issues/8159))
    - xds: add functionality to support SPIFFE Bundle Maps as roots of trust
    in XDS which can be enabled by setting
    `GRPC_EXPERIMENTAL_XDS_MTLS_SPIFFE=true`.
    ([#&#8203;8167](https://redirect.github.com/grpc/grpc-go/issues/8167),
    [#&#8203;8180](https://redirect.github.com/grpc/grpc-go/issues/8180),
    [#&#8203;8229](https://redirect.github.com/grpc/grpc-go/issues/8229),
    [#&#8203;8343](https://redirect.github.com/grpc/grpc-go/issues/8343))
    
    ### Bug Fixes
    
    - xds: locality ID metric label is changed to make it consistent with
    [gRFC
    A78](https://redirect.github.com/grpc/proposal/blob/master/A78-grpc-metrics-wrr-pf-xds.md#optional-xds-locality-label).
    ([#&#8203;8256](https://redirect.github.com/grpc/grpc-go/issues/8256))
    - client: fail RPCs on the client when using extremely short contexts
    that expire before the `grpc-timeout` header is created.
    ([#&#8203;8312](https://redirect.github.com/grpc/grpc-go/issues/8312))
    - server: non-positive `grpc-timeout` header values are now rejected.
    This is consistent with the [gRPC protocol
    spec](https://redirect.github.com/grpc/grpc/blob/master/doc/PROTOCOL-HTTP2.md#requests).
    ([#&#8203;8290](https://redirect.github.com/grpc/grpc-go/issues/8290))
    - Special Thanks: [@&#8203;evanj](https://redirect.github.com/evanj)
    - xds: fix reported error string when LRS load reporting interval is
    invalid.
    ([#&#8203;8224](https://redirect.github.com/grpc/grpc-go/issues/8224))
    - Special Thanks: [@&#8203;alingse](https://redirect.github.com/alingse)
    
    ### Performance Improvements
    
    - credentials/alts: improve read performance by optimizing buffer copies
    and allocations.
    ([#&#8203;8271](https://redirect.github.com/grpc/grpc-go/issues/8271))
    - server: improve performance of RPC handling by avoid a status proto
    copy
    ([#&#8203;8282](https://redirect.github.com/grpc/grpc-go/issues/8282))
    - Special Thanks: [@&#8203;evanj](https://redirect.github.com/evanj)
    
    ### Documentation
    
    - examples/features/opentelemetry: modify example to demonstrate tracing
    using OpenTelemtry plugin.
    ([#&#8203;8056](https://redirect.github.com/grpc/grpc-go/issues/8056))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0MC40OC41IiwidXBkYXRlZEluVmVyIjoiNDAuNDguNSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
