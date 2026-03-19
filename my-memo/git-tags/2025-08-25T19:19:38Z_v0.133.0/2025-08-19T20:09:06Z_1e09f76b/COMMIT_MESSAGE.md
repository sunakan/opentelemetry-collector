commit 1e09f76bb73e1a62b83786ad7d3cabf31d2736fe
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Aug 19 20:09:06 2025 +0000

    Update module google.golang.org/grpc to v1.75.0 (#13677)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Confidence |
    |---|---|---|---|
    | [google.golang.org/grpc](https://redirect.github.com/grpc/grpc-go) |
    `v1.74.2` -> `v1.75.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/google.golang.org%2fgrpc/v1.75.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/google.golang.org%2fgrpc/v1.74.2/v1.75.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v1.75.0`](https://redirect.github.com/grpc/grpc-go/releases/tag/v1.75.0):
    Release 1.75.0
    
    [Compare
    Source](https://redirect.github.com/grpc/grpc-go/compare/v1.74.2...v1.75.0)
    
    ### Behavior Changes
    
    - xds: Remove support for GRPC\_EXPERIMENTAL\_XDS\_FALLBACK environment
    variable. Fallback support can no longer be disabled.
    ([#&#8203;8482](https://redirect.github.com/grpc/grpc-go/issues/8482))
    - stats: Introduce `DelayedPickComplete` event, a type alias of
    `PickerUpdated`.
    ([#&#8203;8465](https://redirect.github.com/grpc/grpc-go/issues/8465))
    - This (combined) event will now be emitted only once per call, when a
    transport is successfully selected for the attempt.
    - OpenTelemetry metrics will no longer have multiple "Delayed LB pick
    complete" events in Go, matching other gRPC languages.
      - A future release will delete the `PickerUpdated` symbol.
    - credentials: Properly apply `grpc.WithAuthority` as the
    highest-priority option for setting authority, above the setting in the
    credentials themselves.
    ([#&#8203;8488](https://redirect.github.com/grpc/grpc-go/issues/8488))
    - Now that this `WithAuthority` is available, the credentials should not
    be used to override the authority.
    - round\_robin: Randomize the order in which addresses are connected to
    in order to spread out initial RPC load between clients.
    ([#&#8203;8438](https://redirect.github.com/grpc/grpc-go/issues/8438))
    - server: Return status code INTERNAL when a client sends more than one
    request in unary and server streaming RPC.
    ([#&#8203;8385](https://redirect.github.com/grpc/grpc-go/issues/8385))
    - This is a behavior change but also a bug fix to bring gRPC-Go in line
    with the gRPC spec.
    
    ### New Features
    
    - dns: Add an environment variable (`GRPC_ENABLE_TXT_SERVICE_CONFIG`) to
    provide a way to disable TXT lookups in the DNS resolver (by setting it
    to `false`). By default, TXT lookups are enabled, as they were
    previously.
    ([#&#8203;8377](https://redirect.github.com/grpc/grpc-go/issues/8377))
    
    ### Bug Fixes
    
    - xds: Fix regression preventing empty node IDs in xDS bootstrap
    configuration.
    ([#&#8203;8476](https://redirect.github.com/grpc/grpc-go/issues/8476))
    - Special Thanks:
    [@&#8203;davinci26](https://redirect.github.com/davinci26)
    - xds: Fix possible panic when certain invalid resources are
    encountered.
    ([#&#8203;8412](https://redirect.github.com/grpc/grpc-go/issues/8412))
    - Special Thanks: [@&#8203;wooffie](https://redirect.github.com/wooffie)
    - xdsclient: Fix a rare panic caused by processing a response from a
    closed server.
    ([#&#8203;8389](https://redirect.github.com/grpc/grpc-go/issues/8389))
    - stats: Fix metric unit formatting by enclosing non-standard units like
    `call` and `endpoint` in curly braces to comply with UCUM and gRPC
    OpenTelemetry guidelines.
    ([#&#8203;8481](https://redirect.github.com/grpc/grpc-go/issues/8481))
    - xds: Fix possible panic when clusters are removed from the xds
    configuration.
    ([#&#8203;8428](https://redirect.github.com/grpc/grpc-go/issues/8428))
    - xdsclient: Fix a race causing "resource doesn not exist" when rapidly
    subscribing and unsubscribing to the same resource.
    ([#&#8203;8369](https://redirect.github.com/grpc/grpc-go/issues/8369))
    - client: When determining the authority, properly percent-encode (if
    needed, which is unlikely) when the target string omits the hostname and
    only specifies a port (`grpc.NewClient(":<port-number-or-name>")`).
    ([#&#8203;8488](https://redirect.github.com/grpc/grpc-go/issues/8488))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0MS44MS4yIiwidXBkYXRlZEluVmVyIjoiNDEuODEuMiIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: otelbot <197425009+otelbot@users.noreply.github.com>
