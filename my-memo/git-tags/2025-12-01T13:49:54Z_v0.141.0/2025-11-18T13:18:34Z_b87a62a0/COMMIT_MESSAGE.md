commit b87a62a0e741de8384e61c0266b4a8c5bcdbbe95
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Nov 18 13:18:34 2025 +0000

    fix(deps): update module google.golang.org/grpc to v1.77.0 (#14181)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Confidence |
    |---|---|---|---|
    | [google.golang.org/grpc](https://redirect.github.com/grpc/grpc-go) |
    `v1.76.0` -> `v1.77.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/google.golang.org%2fgrpc/v1.77.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/google.golang.org%2fgrpc/v1.76.0/v1.77.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v1.77.0`](https://redirect.github.com/grpc/grpc-go/releases/tag/v1.77.0):
    Release 1.77.0
    
    [Compare
    Source](https://redirect.github.com/grpc/grpc-go/compare/v1.76.0...v1.77.0)
    
    ##### API Changes
    
    - mem: Replace the `Reader` interface with a struct for better
    performance and maintainability.
    ([#&#8203;8669](https://redirect.github.com/grpc/grpc-go/issues/8669))
    
    ##### Behavior Changes
    
    - balancer/pickfirst: Remove support for the old `pick_first` LB policy
    via the environment variable
    `GRPC_EXPERIMENTAL_ENABLE_NEW_PICK_FIRST=false`. The new `pick_first`
    has been the default since `v1.71.0`.
    ([#&#8203;8672](https://redirect.github.com/grpc/grpc-go/issues/8672))
    
    ##### Bug Fixes
    
    - xdsclient: Fix a race condition in the ADS stream implementation that
    could result in `resource-not-found` errors, causing the gRPC client
    channel to move to `TransientFailure`.
    ([#&#8203;8605](https://redirect.github.com/grpc/grpc-go/issues/8605))
    - client: Ignore HTTP status header for gRPC streams.
    ([#&#8203;8548](https://redirect.github.com/grpc/grpc-go/issues/8548))
    - client: Set a read deadline when closing a transport to prevent it
    from blocking indefinitely on a broken connection.
    ([#&#8203;8534](https://redirect.github.com/grpc/grpc-go/issues/8534))
    - Special Thanks:
    [@&#8203;jgold2-stripe](https://redirect.github.com/jgold2-stripe)
    - client: Fix a bug where default port 443 was not automatically added
    to addresses without a specified port when sent to a proxy.
    - Setting environment variable
    `GRPC_EXPERIMENTAL_ENABLE_DEFAULT_PORT_FOR_PROXY_TARGET=false` disables
    this change; please file a bug if any problems are encountered as we
    will remove this option soon.
    ([#&#8203;8613](https://redirect.github.com/grpc/grpc-go/issues/8613))
    - balancer/pickfirst: Fix a bug where duplicate addresses were not being
    ignored as intended.
    ([#&#8203;8611](https://redirect.github.com/grpc/grpc-go/issues/8611))
    - server: Fix a bug that caused overcounting of channelz metrics for
    successful and failed streams.
    ([#&#8203;8573](https://redirect.github.com/grpc/grpc-go/issues/8573))
    - Special Thanks: [@&#8203;hugehoo](https://redirect.github.com/hugehoo)
    - balancer/pickfirst: When configured, shuffle addresses in resolver
    updates that lack endpoints. Since gRPC automatically adds endpoints to
    resolver updates, this bug only affects custom LB policies that delegate
    to `pick_first` but don't set endpoints.
    ([#&#8203;8610](https://redirect.github.com/grpc/grpc-go/issues/8610))
    - mem: Clear large buffers before re-using.
    ([#&#8203;8670](https://redirect.github.com/grpc/grpc-go/issues/8670))
    
    ##### Performance Improvements
    
    - transport: Reduce heap allocations to reduce time spent in garbage
    collection.
    ([#&#8203;8624](https://redirect.github.com/grpc/grpc-go/issues/8624),
    [#&#8203;8630](https://redirect.github.com/grpc/grpc-go/issues/8630),
    [#&#8203;8639](https://redirect.github.com/grpc/grpc-go/issues/8639),
    [#&#8203;8668](https://redirect.github.com/grpc/grpc-go/issues/8668))
    - transport: Avoid copies when reading and writing Data frames.
    ([#&#8203;8657](https://redirect.github.com/grpc/grpc-go/issues/8657),
    [#&#8203;8667](https://redirect.github.com/grpc/grpc-go/issues/8667))
    - mem: Avoid clearing newly allocated buffers.
    ([#&#8203;8670](https://redirect.github.com/grpc/grpc-go/issues/8670))
    
    ##### New Features
    
    - outlierdetection: Add metrics specified in [gRFC
    A91](https://redirect.github.com/grpc/proposal/blob/master/A91-outlier-detection-metrics.md).
    ([#&#8203;8644](https://redirect.github.com/grpc/grpc-go/issues/8644))
    - Special Thanks:
    [@&#8203;davinci26](https://redirect.github.com/davinci26),
    [@&#8203;PardhuKonakanchi](https://redirect.github.com/PardhuKonakanchi)
    - stats/opentelemetry: Add support for optional label
    `grpc.lb.backend_service` in per-call metrics
    ([#&#8203;8637](https://redirect.github.com/grpc/grpc-go/issues/8637))
    - xds: Add support for JWT Call Credentials as specified in [gRFC
    A97](https://redirect.github.com/grpc/proposal/blob/master/A97-xds-jwt-call-creds.md).
    Set environment variable
    `GRPC_EXPERIMENTAL_XDS_BOOTSTRAP_CALL_CREDS=true` to enable this
    feature.
    ([#&#8203;8536](https://redirect.github.com/grpc/grpc-go/issues/8536))
    - Special Thanks:
    [@&#8203;dimpavloff](https://redirect.github.com/dimpavloff)
    - experimental/stats: Add support for up/down counters.
    ([#&#8203;8581](https://redirect.github.com/grpc/grpc-go/issues/8581))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0Mi4xMy41IiwidXBkYXRlZEluVmVyIjoiNDIuMTMuNSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: otelbot <197425009+otelbot@users.noreply.github.com>
