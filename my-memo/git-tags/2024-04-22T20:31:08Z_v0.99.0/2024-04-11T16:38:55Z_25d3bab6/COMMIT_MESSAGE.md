commit 25d3bab6361d477bc6cf074408683d2b9c952b66
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Thu Apr 11 09:38:55 2024 -0700

    Update module google.golang.org/grpc to v1.63.2 (#9928)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    | [google.golang.org/grpc](https://togithub.com/grpc/grpc-go) |
    `v1.62.1` -> `v1.63.2` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/google.golang.org%2fgrpc/v1.63.2?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/google.golang.org%2fgrpc/v1.63.2?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/google.golang.org%2fgrpc/v1.62.1/v1.63.2?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/google.golang.org%2fgrpc/v1.62.1/v1.63.2?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    | [google.golang.org/grpc](https://togithub.com/grpc/grpc-go) |
    `v1.63.0` -> `v1.63.2` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/google.golang.org%2fgrpc/v1.63.2?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/google.golang.org%2fgrpc/v1.63.2?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/google.golang.org%2fgrpc/v1.63.0/v1.63.2?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/google.golang.org%2fgrpc/v1.63.0/v1.63.2?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>grpc/grpc-go (google.golang.org/grpc)</summary>
    
    ### [`v1.63.2`](https://togithub.com/grpc/grpc-go/releases/tag/v1.63.2):
    Release 1.63.2
    
    [Compare
    Source](https://togithub.com/grpc/grpc-go/compare/v1.63.1...v1.63.2)
    
    ### Bugs
    
    -   Fix the user agent string
    
    ### [`v1.63.1`](https://togithub.com/grpc/grpc-go/releases/tag/v1.63.1):
    Release 1.63.1
    
    [Compare
    Source](https://togithub.com/grpc/grpc-go/compare/v1.63.0...v1.63.1)
    
    -   grpc: un-deprecate Dial and DialContext and cherry-pick
    
    ### [`v1.63.0`](https://togithub.com/grpc/grpc-go/releases/tag/v1.63.0):
    Release 1.63.0
    
    [Compare
    Source](https://togithub.com/grpc/grpc-go/compare/v1.62.2...v1.63.0)
    
    ### Behavior Changes
    
    - grpc: Return canonical target string from `resolver.Address.String()`
    (experimental)
    ([#&#8203;6923](https://togithub.com/grpc/grpc-go/issues/6923))
    - client & server: when using write buffer pooling, use input value for
    buffer size instead of size\*2
    ([#&#8203;6983](https://togithub.com/grpc/grpc-go/issues/6983))
    - Special Thanks:
    [@&#8203;raghav-stripe](https://togithub.com/raghav-stripe)
    
    ### New Features
    
    - grpc: add `ClientConn.CanonicalTarget()` to return the canonical
    target string.
    ([#&#8203;7006](https://togithub.com/grpc/grpc-go/issues/7006))
    - xds: implement LRS named metrics support ([gRFC
    A64](https://togithub.com/grpc/proposal/blob/master/A64-lrs-custom-metrics.md))
    ([#&#8203;7027](https://togithub.com/grpc/grpc-go/issues/7027))
    - Special Thanks:
    [@&#8203;danielzhaotongliu](https://togithub.com/danielzhaotongliu)
    - grpc: introduce `grpc.NewClient` to allow users to create new clients
    in idle mode and with "dns" as the default resolver
    ([#&#8203;7010](https://togithub.com/grpc/grpc-go/issues/7010))
    - Special Thanks:
    [@&#8203;bruuuuuuuce](https://togithub.com/bruuuuuuuce)
    
    ### API Changes
    
    - grpc: stabilize experimental method `ClientConn.Target()`
    ([#&#8203;7006](https://togithub.com/grpc/grpc-go/issues/7006))
    
    ### Bug Fixes
    
    - xds: fix an issue that would cause the client to send an empty list of
    resources for LDS/CDS upon reconnecting with the management server
    ([#&#8203;7026](https://togithub.com/grpc/grpc-go/issues/7026))
    - server: Fix some errors returned by a server when using a
    `grpc.Server` as an `http.Handler` with the Go stdlib HTTP server
    ([#&#8203;6989](https://togithub.com/grpc/grpc-go/issues/6989))
    - resolver/dns: add `SetResolvingTimeout` to allow configuring the DNS
    resolver's global timeout
    ([#&#8203;6917](https://togithub.com/grpc/grpc-go/issues/6917))
    - Special Thanks: [@&#8203;and1truong](https://togithub.com/and1truong)
    - Set the security level of Windows named pipes to NoSecurity
    ([#&#8203;6956](https://togithub.com/grpc/grpc-go/issues/6956))
        -   Special Thanks: [@&#8203;irsl](https://togithub.com/irsl)
    
    ### [`v1.62.2`](https://togithub.com/grpc/grpc-go/releases/tag/v1.62.2):
    Release 1.62.2
    
    [Compare
    Source](https://togithub.com/grpc/grpc-go/compare/v1.62.1...v1.62.2)
    
    ### Dependencies
    
    - Update http2 library to address vulnerability
    [CVE-2023-45288](https://www.kb.cert.org/vuls/id/421644)
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "on tuesday" (UTC), Automerge - At any
    time (no schedule defined).
    
    🚦 **Automerge**: Disabled by config. Please merge this manually once you
    are satisfied.
    
    ♻ **Rebasing**: Whenever PR becomes conflicted, or you tick the
    rebase/retry checkbox.
    
    🔕 **Ignore**: Close this PR and you won't be reminded about these
    updates again.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR has been generated by [Mend
    Renovate](https://www.mend.io/free-developer-tools/renovate/). View
    repository job log
    [here](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4yNjkuMiIsInVwZGF0ZWRJblZlciI6IjM3LjI2OS4yIiwidGFyZ2V0QnJhbmNoIjoibWFpbiJ9-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
