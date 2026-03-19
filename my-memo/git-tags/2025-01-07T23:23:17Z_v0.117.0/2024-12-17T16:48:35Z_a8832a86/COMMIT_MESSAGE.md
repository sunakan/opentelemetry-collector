commit a8832a8623ebb913dd945dd86b129c1fb7346c94
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Dec 17 16:48:35 2024 +0000

    Update module google.golang.org/grpc to v1.69.0 (#11931)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    | [google.golang.org/grpc](https://redirect.github.com/grpc/grpc-go) |
    `v1.68.1` -> `v1.69.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/google.golang.org%2fgrpc/v1.69.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/google.golang.org%2fgrpc/v1.69.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/google.golang.org%2fgrpc/v1.68.1/v1.69.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/google.golang.org%2fgrpc/v1.68.1/v1.69.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v1.69.0`](https://redirect.github.com/grpc/grpc-go/releases/tag/v1.69.0):
    Release 1.69.0
    
    [Compare
    Source](https://redirect.github.com/grpc/grpc-go/compare/v1.68.1...v1.69.0)
    
    ### Known Issues
    
    - The recently added `grpc.NewClient` function is incompatible with
    forward proxies, because it resolves the target hostname on the client
    instead of passing the hostname to the proxy. A fix is expected to be a
    part of grpc-go v1.70.
    ([#&#8203;7556](https://redirect.github.com/grpc/grpc-go/issues/7556))
    
    ### New Features
    
    - stats/opentelemetry: Introduce new APIs to enable OpenTelemetry
    instrumentation for metrics on servers and clients
    ([#&#8203;7874](https://redirect.github.com/grpc/grpc-go/issues/7874))
    - xdsclient: add support to fallback to lower priority servers when
    higher priority ones are down
    ([#&#8203;7701](https://redirect.github.com/grpc/grpc-go/issues/7701))
    - dns: Add support for link local IPv6 addresses
    ([#&#8203;7889](https://redirect.github.com/grpc/grpc-go/issues/7889))
    - The new experimental `pickfirst` LB policy (disabled by default)
    supports Happy Eyeballs, interleaving IPv4 and IPv6 address as described
    in [RFC-8305 section
    4](https://www.rfc-editor.org/rfc/rfc8305#section-4), to attempt
    connections to multiple backends concurrently. The experimental
    `pickfirst` policy can be enabled by setting the environment variable
    `GRPC_EXPERIMENTAL_ENABLE_NEW_PICK_FIRST` to `true`.
    ([#&#8203;7725](https://redirect.github.com/grpc/grpc-go/issues/7725),
    [#&#8203;7742](https://redirect.github.com/grpc/grpc-go/issues/7742))
    - balancer/pickfirst: Emit metrics from the `pick_first` load balancing
    policy
    ([#&#8203;7839](https://redirect.github.com/grpc/grpc-go/issues/7839))
    - grpc: export `MethodHandler`, which is the type of an already-exported
    field in `MethodDesc`
    ([#&#8203;7796](https://redirect.github.com/grpc/grpc-go/issues/7796))
    - Special Thanks:
    [@&#8203;mohdjishin](https://redirect.github.com/mohdjishin)
    
    ### Bug Fixes
    
    - credentials/google: set scope for application default credentials
    ([#&#8203;7887](https://redirect.github.com/grpc/grpc-go/issues/7887))
    - Special Thanks:
    [@&#8203;halvards](https://redirect.github.com/halvards)
    - xds: fix edge-case issues where some clients or servers would not
    initialize correctly or would not receive errors when resources are
    invalid or unavailable if another channel or server with the same target
    was already in use .
    ([#&#8203;7851](https://redirect.github.com/grpc/grpc-go/issues/7851),
    [#&#8203;7853](https://redirect.github.com/grpc/grpc-go/issues/7853))
    - examples: fix the debugging example, which was broken by a recent
    change
    ([#&#8203;7833](https://redirect.github.com/grpc/grpc-go/issues/7833))
    
    ### Behavior Changes
    
    - client: update retry attempt backoff to apply jitter per updates to
    [gRFC
    A6](https://redirect.github.com/grpc/proposal/blob/master/A6-client-retries.md).
    ([#&#8203;7869](https://redirect.github.com/grpc/grpc-go/issues/7869))
        -   Special Thanks: [@&#8203;isgj](https://redirect.github.com/isgj)
    - balancer/weightedroundrobin: use the `pick_first` LB policy to manage
    connections
    ([#&#8203;7826](https://redirect.github.com/grpc/grpc-go/issues/7826))
    
    ### API Changes
    
    - balancer: An internal method is added to the `balancer.SubConn`
    interface to force implementors to embed a delegate implementation. This
    requirement is present in the interface documentation, but wasn't
    enforced earlier.
    ([#&#8203;7840](https://redirect.github.com/grpc/grpc-go/issues/7840))
    
    ### Performance Improvements
    
    - mem: implement a `ReadAll()` method for more efficient `io.Reader`
    consumption
    ([#&#8203;7653](https://redirect.github.com/grpc/grpc-go/issues/7653))
    - Special Thanks: [@&#8203;ash2k](https://redirect.github.com/ash2k)
    - mem: use slice capacity instead of length to determine whether to pool
    buffers or directly allocate them
    ([#&#8203;7702](https://redirect.github.com/grpc/grpc-go/issues/7702))
    - Special Thanks:
    [@&#8203;PapaCharlie](https://redirect.github.com/PapaCharlie)
    
    ### Documentation
    
    - examples/csm_observability: Add xDS Credentials and switch server to
    be xDS enabled
    ([#&#8203;7875](https://redirect.github.com/grpc/grpc-go/issues/7875))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOS42OS4zIiwidXBkYXRlZEluVmVyIjoiMzkuNjkuMyIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
