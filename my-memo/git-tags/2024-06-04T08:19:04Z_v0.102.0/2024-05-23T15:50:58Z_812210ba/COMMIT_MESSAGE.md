commit 812210ba3685d442f9918fd1e6d2831b66000564
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Thu May 23 08:50:58 2024 -0700

    fix(deps): update module google.golang.org/grpc to v1.64.0 (#10187)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    | [google.golang.org/grpc](https://togithub.com/grpc/grpc-go) |
    `v1.63.2` -> `v1.64.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/google.golang.org%2fgrpc/v1.64.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/google.golang.org%2fgrpc/v1.64.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/google.golang.org%2fgrpc/v1.63.2/v1.64.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/google.golang.org%2fgrpc/v1.63.2/v1.64.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>grpc/grpc-go (google.golang.org/grpc)</summary>
    
    ### [`v1.64.0`](https://togithub.com/grpc/grpc-go/releases/tag/v1.64.0):
    Release 1.64.0
    
    [Compare
    Source](https://togithub.com/grpc/grpc-go/compare/v1.63.2...v1.64.0)
    
    ### API Changes
    
    - stats: Deprecate `InPayload.Data` and `OutPayload.Data`; they were
    experimental and will be deleted in the next release
    ([#&#8203;7121](https://togithub.com/grpc/grpc-go/issues/7121))
    
    ### Behavior Changes
    
    - codec: Remove handling of environment variable
    `GRPC_GO_ADVERTISE_COMPRESSORS` to suppress setting supported
    compressors in `grpc-accept-encoding` header. Compressors will always be
    advertised, as they have been by default for some time
    ([#&#8203;7203](https://togithub.com/grpc/grpc-go/issues/7203))
    
    ### New Features
    
    - resolver/dns: Add `SetMinResolutionInterval` to set the minimum
    interval at which DNS re-resolutions may occur
    ([#&#8203;6962](https://togithub.com/grpc/grpc-go/issues/6962))
    - Special Thanks:
    [@&#8203;HomayoonAlimohammadi](https://togithub.com/HomayoonAlimohammadi)
    - peer/peer: Implement the `fmt.Stringer` interface for pretty printing
    `Peer`, and
    - metadata/metadata: Implement the `fmt.Stringer` interface for pretty
    printing `MD`
    ([#&#8203;7137](https://togithub.com/grpc/grpc-go/issues/7137))
    - Special Thanks: [@&#8203;AnomalRoil](https://togithub.com/AnomalRoil)
    
    ### Performance Improvements
    
    - client: Improve RPC performance by reducing work while holding a lock
    ([#&#8203;7132](https://togithub.com/grpc/grpc-go/issues/7132))
    
    ### Bug Fixes
    
    - transport/server: Display the proper timeout value when keepalive
    pings are not ack'd in time
    ([#&#8203;7038](https://togithub.com/grpc/grpc-go/issues/7038))
    - Special Thanks: [@&#8203;BatmanAoD](https://togithub.com/BatmanAoD)
    - channelz: Fix bug that was causing the subchannel's target to be unset
    ([#&#8203;7189](https://togithub.com/grpc/grpc-go/issues/7189))
    - stats: Fix bug where peer was not set in context when calling stats
    handler for `OutPayload`, `InPayload`, and `End`
    ([#&#8203;7096](https://togithub.com/grpc/grpc-go/issues/7096))
    
    ### Dependencies
    
    - deps: Remove dependency on deprecated `github.com/golang/protobuf`
    module ([#&#8203;7122](https://togithub.com/grpc/grpc-go/issues/7122))
    
    ### Documentation
    
    - grpc: Deprecate `WithBlock`, `WithReturnConnectionError`,
    `FailOnNonTempDialError` which are ignored by `NewClient`
    ([#&#8203;7097](https://togithub.com/grpc/grpc-go/issues/7097))
    - Special Thanks: [@&#8203;pellared](https://togithub.com/pellared)
    - grpc: Deprecate `Dial` and `DialContext`. These will continue to be
    supported throughout 1.x, but are deprecated to direct users to
    `NewClient` (See
    [#&#8203;7090](https://togithub.com/grpc/grpc-go/issues/7090) for more
    information)
    - examples: Add custom lb example
    ([#&#8203;6691](https://togithub.com/grpc/grpc-go/issues/6691))
    
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
    
    This PR has been generated by [Mend
    Renovate](https://www.mend.io/free-developer-tools/renovate/). View
    repository job log
    [here](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4zNjMuNSIsInVwZGF0ZWRJblZlciI6IjM3LjM2OC4xMCIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
