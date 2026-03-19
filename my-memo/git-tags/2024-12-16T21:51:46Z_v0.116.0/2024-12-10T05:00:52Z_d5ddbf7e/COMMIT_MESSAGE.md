commit d5ddbf7ebf7b6bdbe7389f5f66e08bcf1b7b95e0
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Dec 10 05:00:52 2024 +0000

    fix(deps): update module google.golang.org/grpc to v1.68.1 (#11835)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    | [google.golang.org/grpc](https://redirect.github.com/grpc/grpc-go) |
    `v1.67.1` -> `v1.68.1` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/google.golang.org%2fgrpc/v1.68.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/google.golang.org%2fgrpc/v1.68.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/google.golang.org%2fgrpc/v1.67.1/v1.68.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/google.golang.org%2fgrpc/v1.67.1/v1.68.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v1.68.1`](https://redirect.github.com/grpc/grpc-go/releases/tag/v1.68.1):
    Release 1.68.1
    
    [Compare
    Source](https://redirect.github.com/grpc/grpc-go/compare/v1.68.0...v1.68.1)
    
    ### Bug Fixes
    
    - credentials/alts: avoid SRV and TXT lookups for handshaker service to
    work around hangs caused by buggy versions of systemd-resolved.
    ([#&#8203;7861](https://redirect.github.com/grpc/grpc-go/issues/7861))
    
    ### Dependencies
    
    - Relax minimum Go version requirement from `go1.22.7` to `go1.22`.
    ([#&#8203;7831](https://redirect.github.com/grpc/grpc-go/issues/7831))
    
    ###
    [`v1.68.0`](https://redirect.github.com/grpc/grpc-go/releases/tag/v1.68.0):
    Release 1.68.0
    
    [Compare
    Source](https://redirect.github.com/grpc/grpc-go/compare/v1.67.2...v1.68.0)
    
    ### Behavior Changes
    
    - stats/opentelemetry/csm: Get mesh_id local label from "CSM_MESH_ID"
    environment variable, rather than parsing from bootstrap file
    ([#&#8203;7740](https://redirect.github.com/grpc/grpc-go/issues/7740))
    - orca (experimental): if using an ORCA listener, it must now be
    registered only on a READY SubConn, and the listener will automatically
    be stopped when the connection is lost.
    ([#&#8203;7663](https://redirect.github.com/grpc/grpc-go/issues/7663))
    - client: `ClientConn.Close()` now closes transports simultaneously and
    waits for transports to be closed before returning.
    ([#&#8203;7666](https://redirect.github.com/grpc/grpc-go/issues/7666))
    - credentials: TLS credentials created via `NewTLS` that use
    `tls.Config.GetConfigForClient` will now have CipherSuites, supported
    TLS versions and ALPN configured automatically. These were previously
    only set for configs not using the `GetConfigForClient` option.
    ([#&#8203;7709](https://redirect.github.com/grpc/grpc-go/issues/7709))
    
    ### Bug Fixes
    
    - transport: prevent deadlock in client transport shutdown when writing
    the GOAWAY frame hangs.
    ([#&#8203;7662](https://redirect.github.com/grpc/grpc-go/issues/7662))
    - mem: reuse buffers more accurately by using slice capacity instead of
    length
    ([#&#8203;7702](https://redirect.github.com/grpc/grpc-go/issues/7702))
    - Special Thanks:
    [@&#8203;PapaCharlie](https://redirect.github.com/PapaCharlie)
    - status: Fix regression caused by
    [#&#8203;6919](https://redirect.github.com/grpc/grpc-go/issues/6919) in
    status.Details() causing it to return a wrapped type when getting proto
    messages generated with protoc-gen-go < v1.
    ([#&#8203;7724](https://redirect.github.com/grpc/grpc-go/issues/7724))
    
    ### Dependencies
    
    - Bump minimum supported Go version to `go1.22.7`.
    ([#&#8203;7624](https://redirect.github.com/grpc/grpc-go/issues/7624))
    
    ###
    [`v1.67.2`](https://redirect.github.com/grpc/grpc-go/releases/tag/v1.67.2):
    Release 1.67.2
    
    [Compare
    Source](https://redirect.github.com/grpc/grpc-go/compare/v1.67.1...v1.67.2)
    
    ### Bug Fixes
    
    - credentials/alts: avoid SRV and TXT lookups for handshaker service to
    work around hangs caused by buggy versions of systemd-resolved.
    ([#&#8203;7861](https://redirect.github.com/grpc/grpc-go/issues/7861))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOS40Mi40IiwidXBkYXRlZEluVmVyIjoiMzkuNDIuNCIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
