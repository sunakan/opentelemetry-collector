commit e43c36c0acf1fe2c5a08ca09ceef19f72e8a0a03
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Wed Mar 5 11:53:37 2025 +0100

    Update module google.golang.org/grpc to v1.71.0 (#12556)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    | [google.golang.org/grpc](https://redirect.github.com/grpc/grpc-go) |
    `v1.70.0` -> `v1.71.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/google.golang.org%2fgrpc/v1.71.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/google.golang.org%2fgrpc/v1.71.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/google.golang.org%2fgrpc/v1.70.0/v1.71.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/google.golang.org%2fgrpc/v1.70.0/v1.71.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v1.71.0`](https://redirect.github.com/grpc/grpc-go/releases/tag/v1.71.0):
    Release 1.71.0
    
    [Compare
    Source](https://redirect.github.com/grpc/grpc-go/compare/v1.70.0...v1.71.0)
    
    ### API Changes
    
    - balancer: Custom LB policies that record metrics must use the new
    `MetricsRecorder` method on `Balancer.ClientConn` instead of the removed
    `Balancer.BuildOptions.MetricsRecorder` field to obtain a metrics
    recorder.
    ([#&#8203;8027](https://redirect.github.com/grpc/grpc-go/issues/8027))
    - balancer: `balancer.ClientConn` implementations must now embed a
    delegate implementation. This allows grpc-go to add new methods to the
    interface and remain backward compatible.
    ([#&#8203;8026](https://redirect.github.com/grpc/grpc-go/issues/8026))
    - balancer/endpointsharding: The constructor accepts the child
    balancer's builder and a struct with optional configuration.
    ([#&#8203;8052](https://redirect.github.com/grpc/grpc-go/issues/8052))
    
    ### New Features
    
    - xds: Add support for dualstack via the
    [additional_addresses](https://redirect.github.com/envoyproxy/envoy/blob/df394a41c8587d1da4e97e156554e93ceee3c720/api/envoy/config/endpoint/v3/endpoint_components.proto#L91-L96)
    field in the Endpoint resource. To disable this feature, set the
    environment variable `GRPC_EXPERIMENTAL_XDS_DUALSTACK_ENDPOINTS=false`.
    ([#&#8203;8134](https://redirect.github.com/grpc/grpc-go/issues/8134))
    - stats/opentelemetry: Add experimental support for OpenTelemetry
    tracing.
    ([#&#8203;7852](https://redirect.github.com/grpc/grpc-go/issues/7852))
    - xds/internal/xdsclient: Add counter metrics for valid and invalid
    resource updates.
    ([#&#8203;8038](https://redirect.github.com/grpc/grpc-go/issues/8038))
    - balancer/leastrequest, roundrobin: Add dualstack support.
    ([#&#8203;7969](https://redirect.github.com/grpc/grpc-go/issues/7969),
    [#&#8203;7966](https://redirect.github.com/grpc/grpc-go/issues/7966))
    - balancer/endpointsharding: Balancers created with the new
    `DisableAutoReconnect` option will not attempt to call `ExitIdle`
    automatically on their children when the children report idle.
    ([#&#8203;8052](https://redirect.github.com/grpc/grpc-go/issues/8052))
    
    ### Bug Fixes
    
    - client: Fix support for proxies when using `grpc.NewClient` so the
    target is resolved by the proxy as expected.
    ([#&#8203;7881](https://redirect.github.com/grpc/grpc-go/issues/7881))
    - Added `WithLocalDNSResolution()` dial option to explicitly force
    target resolution on the client instead.
    ([#&#8203;7881](https://redirect.github.com/grpc/grpc-go/issues/7881))
    - weightedtarget: Return erroring picker when no targets are configured.
    ([#&#8203;8070](https://redirect.github.com/grpc/grpc-go/issues/8070))
    - xds: Fail RPCs with `UNAVAILABLE` when the EDS resource is missing or
    contains no endpoints
    ([#&#8203;8070](https://redirect.github.com/grpc/grpc-go/issues/8070))
    - xdsclient: Fix a bug where connectivity failures were reported to
    resource watchers before trying all listed servers.
    ([#&#8203;8075](https://redirect.github.com/grpc/grpc-go/issues/8075))
    - grpc: Fix the number of bytes reported in the error message when
    encoded messages are larger than 4GB.
    ([#&#8203;8033](https://redirect.github.com/grpc/grpc-go/issues/8033))
    - rls: Fix a bug where RLS channel updates could be lost during startup.
    ([#&#8203;8055](https://redirect.github.com/grpc/grpc-go/issues/8055))
    - xds: Fixed a bug preventing tests from creating multiple servers or
    channels with different bootstrap configs.
    ([#&#8203;8050](https://redirect.github.com/grpc/grpc-go/issues/8050))
    - grpc: Fix message length checks when compression is enabled and
    `maxReceiveMessageSize` is `MaxInt`
    ([#&#8203;7918](https://redirect.github.com/grpc/grpc-go/issues/7918))
    - Special Thanks:
    [@&#8203;vinothkumarr227](https://redirect.github.com/vinothkumarr227)
    
    ### Documentation
    
    - client: Improve documentation of `grpc.NewClient` and
    `ClientConn.CanonicalTarget` by providing examples.
    ([#&#8203;8078](https://redirect.github.com/grpc/grpc-go/issues/8078))
    - examples/features/dualstack: New example demonstrating usage of
    endpoints and dualstack functionality.
    ([#&#8203;8098](https://redirect.github.com/grpc/grpc-go/issues/8098))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOS4xODUuNCIsInVwZGF0ZWRJblZlciI6IjM5LjE4NS40IiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
