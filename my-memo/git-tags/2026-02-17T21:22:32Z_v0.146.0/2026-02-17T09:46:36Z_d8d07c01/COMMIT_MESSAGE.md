commit d8d07c01912df18b1882117de1c9aa7672d047e9
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Feb 17 09:46:36 2026 +0000

    fix(deps): update module google.golang.org/grpc to v1.79.1 (#14603)
    
    This PR contains the following updates:
    
    | Package | Change |
    [Age](https://docs.renovatebot.com/merge-confidence/) |
    [Confidence](https://docs.renovatebot.com/merge-confidence/) |
    |---|---|---|---|
    | [google.golang.org/grpc](https://redirect.github.com/grpc/grpc-go) |
    `v1.78.0` → `v1.79.1` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/google.golang.org%2fgrpc/v1.79.1?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/google.golang.org%2fgrpc/v1.78.0/v1.79.1?slim=true)
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
    [`v1.79.1`](https://redirect.github.com/grpc/grpc-go/releases/tag/v1.79.1):
    Release 1.79.1
    
    [Compare
    Source](https://redirect.github.com/grpc/grpc-go/compare/v1.79.0...v1.79.1)
    
    ### Bug Fixes
    
    - grpc: Remove the `-dev` suffix from the User-Agent header.
    ([#&#8203;8902](https://redirect.github.com/grpc/grpc-go/pull/8902))
    
    ###
    [`v1.79.0`](https://redirect.github.com/grpc/grpc-go/releases/tag/v1.79.0):
    Release 1.79.0
    
    [Compare
    Source](https://redirect.github.com/grpc/grpc-go/compare/v1.78.0...v1.79.0)
    
    ### API Changes
    
    - mem: Add experimental API `SetDefaultBufferPool` to change the default
    buffer pool.
    ([#&#8203;8806](https://redirect.github.com/grpc/grpc-go/issues/8806))
    - Special Thanks: [@&#8203;vanja-p](https://redirect.github.com/vanja-p)
    - experimental/stats: Update `MetricsRecorder` to require embedding the
    new `UnimplementedMetricsRecorder` (a no-op struct) in all
    implementations for forward compatibility.
    ([#&#8203;8780](https://redirect.github.com/grpc/grpc-go/issues/8780))
    
    ### Behavior Changes
    
    - balancer/weightedtarget: Remove handling of `Addresses` and only
    handle `Endpoints` in resolver updates.
    ([#&#8203;8841](https://redirect.github.com/grpc/grpc-go/issues/8841))
    
    ### New Features
    
    - experimental/stats: Add support for asynchronous gauge metrics through
    the new `AsyncMetricReporter` and `RegisterAsyncReporter` APIs.
    ([#&#8203;8780](https://redirect.github.com/grpc/grpc-go/issues/8780))
    - pickfirst: Add support for weighted random shuffling of endpoints, as
    described in [gRFC
    A113](https://redirect.github.com/grpc/proposal/pull/535).
    - This is enabled by default, and can be turned off using the
    environment variable `GRPC_EXPERIMENTAL_PF_WEIGHTED_SHUFFLING`.
    ([#&#8203;8864](https://redirect.github.com/grpc/grpc-go/issues/8864))
    - xds: Implement `:authority` rewriting, as specified in [gRFC
    A81](https://redirect.github.com/grpc/proposal/blob/master/A81-xds-authority-rewriting.md).
    ([#&#8203;8779](https://redirect.github.com/grpc/grpc-go/issues/8779))
    - balancer/randomsubsetting: Implement the `random_subsetting` LB
    policy, as specified in [gRFC
    A68](https://redirect.github.com/grpc/proposal/blob/master/A68-random-subsetting.md).
    ([#&#8203;8650](https://redirect.github.com/grpc/grpc-go/issues/8650))
    - Special Thanks:
    [@&#8203;marek-szews](https://redirect.github.com/marek-szews)
    - server: Include status detail headers, if available, when terminating
    a stream during request header processing.
    ([#&#8203;8754](https://redirect.github.com/grpc/grpc-go/issues/8754))
    - Special Thanks:
    [@&#8203;joybestourous](https://redirect.github.com/joybestourous)
    
    ### Bug Fixes
    
    - credentials/tls: Fix a bug where the port was not stripped from the
    authority override before validation.
    ([#&#8203;8726](https://redirect.github.com/grpc/grpc-go/issues/8726))
    - Special Thanks:
    [@&#8203;Atul1710](https://redirect.github.com/Atul1710)
    - xds/priority: Fix a bug causing delayed failover to lower-priority
    clusters when a higher-priority cluster is stuck in `CONNECTING` state.
    ([#&#8203;8813](https://redirect.github.com/grpc/grpc-go/issues/8813))
    - health: Fix a bug where health checks failed for clients using legacy
    compression options (`WithDecompressor` or `RPCDecompressor`).
    ([#&#8203;8765](https://redirect.github.com/grpc/grpc-go/issues/8765))
    - Special Thanks: [@&#8203;sanki92](https://redirect.github.com/sanki92)
    - transport: Fix an issue where the HTTP/2 server could skip header size
    checks when terminating a stream early.
    ([#&#8203;8769](https://redirect.github.com/grpc/grpc-go/issues/8769))
    - Special Thanks:
    [@&#8203;joybestourous](https://redirect.github.com/joybestourous)
    
    ### Performance Improvements
    
    - credentials/alts: Optimize read buffer alignment to reduce copies.
    ([#&#8203;8791](https://redirect.github.com/grpc/grpc-go/issues/8791))
    - mem: Optimize pooling and creation of `buffer` objects.
    ([#&#8203;8784](https://redirect.github.com/grpc/grpc-go/issues/8784))
    - transport: Reduce slice re-allocations by reserving slice capacity.
    ([#&#8203;8797](https://redirect.github.com/grpc/grpc-go/issues/8797))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0My4xNS4zIiwidXBkYXRlZEluVmVyIjoiNDMuMTUuMyIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: otelbot <197425009+otelbot@users.noreply.github.com>
