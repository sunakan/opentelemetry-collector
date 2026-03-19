commit dea6252a17b7a2c5566a2963e56fde40c76dd7b5
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jan 30 08:55:28 2024 -0800

    Update module google.golang.org/grpc to v1.61.0 (#9425)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    | [google.golang.org/grpc](https://togithub.com/grpc/grpc-go) |
    `v1.60.1` -> `v1.61.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/google.golang.org%2fgrpc/v1.61.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/google.golang.org%2fgrpc/v1.61.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/google.golang.org%2fgrpc/v1.60.1/v1.61.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/google.golang.org%2fgrpc/v1.60.1/v1.61.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>grpc/grpc-go (google.golang.org/grpc)</summary>
    
    ### [`v1.61.0`](https://togithub.com/grpc/grpc-go/releases/tag/v1.61.0):
    Release 1.61.0
    
    [Compare
    Source](https://togithub.com/grpc/grpc-go/compare/v1.60.1...v1.61.0)
    
    ### New Features
    
    - resolver: provide method, `AuthorityOverrider`, to allow
    resolver.Builders to override the default authority for a `ClientConn`.
    (EXPERIMENTAL)
    ([#&#8203;6752](https://togithub.com/grpc/grpc-go/issues/6752))
    - Special Thanks:
    [@&#8203;Aditya-Sood](https://togithub.com/Aditya-Sood)
    - xds: add support for mTLS Credentials in xDS bootstrap ([gRFC
    A65](github.com/grpc/proposal/blob/8c31bfedded5f0a51c4933e9e9a8246122f9c41a/A65-xds-mtls-creds-in-bootstrap.md))
    ([#&#8203;6757](https://togithub.com/grpc/grpc-go/issues/6757))
    - Special Thanks: [@&#8203;atollena](https://togithub.com/atollena)
    - server: add `grpc.WaitForHandlers` `ServerOption` to cause
    `Server.Stop` to block until method handlers return. (EXPERIMENTAL)
    ([#&#8203;6922](https://togithub.com/grpc/grpc-go/issues/6922))
    
    ### Performance Improvements
    
    - grpc: skip compression of empty messages as an optimization
    ([#&#8203;6842](https://togithub.com/grpc/grpc-go/issues/6842))
        -   Special Thanks: [@&#8203;jroper](https://togithub.com/jroper)
    - orca: use atomic pointer to improve performance in server metrics
    recorder ([#&#8203;6799](https://togithub.com/grpc/grpc-go/issues/6799))
    - Special Thanks:
    [@&#8203;danielzhaotongliu](https://togithub.com/danielzhaotongliu)
    
    ### Bug Fixes
    
    - client: correctly enable TCP keepalives with OS defaults on windows
    ([#&#8203;6863](https://togithub.com/grpc/grpc-go/issues/6863))
    - Special Thanks: [@&#8203;mmatczuk](https://togithub.com/mmatczuk)
    - server: change some stream operations to return `UNAVAILABLE` instead
    of `UNKNOWN` when underlying connection is broken
    ([#&#8203;6891](https://togithub.com/grpc/grpc-go/issues/6891))
    - Special Thanks:
    [@&#8203;mustafasen81](https://togithub.com/mustafasen81)
    - server: fix `GracefulStop` to block until all method handlers return
    (v1.60 regression).
    ([#&#8203;6922](https://togithub.com/grpc/grpc-go/issues/6922))
    - server: fix two bugs that could lead to panics at shutdown when using
    [`NumStreamWorkers`](https://pkg.go.dev/google.golang.org/grpc#NumStreamWorkers)
    (EXPERIMENTAL).
    ([#&#8203;6856](https://togithub.com/grpc/grpc-go/issues/6856))
    - reflection: do not send invalid descriptors to clients for files that
    cannot be fully resolved
    ([#&#8203;6771](https://togithub.com/grpc/grpc-go/issues/6771))
        -   Special Thanks: [@&#8203;jhump](https://togithub.com/jhump)
    - xds: don't fail channel/server startup when xds creds is specified,
    but bootstrap is missing certificate providers
    ([#&#8203;6848](https://togithub.com/grpc/grpc-go/issues/6848))
    - xds: Atomically read and write xDS security configuration client side
    ([#&#8203;6796](https://togithub.com/grpc/grpc-go/issues/6796))
    - xds/server: fix RDS handling for non-inline route configs
    ([#&#8203;6915](https://togithub.com/grpc/grpc-go/issues/6915))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4xNTMuMiIsInVwZGF0ZWRJblZlciI6IjM3LjE1My4yIiwidGFyZ2V0QnJhbmNoIjoibWFpbiJ9-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
