commit dd5b878a1efc3c64592e386ce95f6f65337aaa0d
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Sep 23 11:40:40 2025 +0200

    fix(deps): update all opentelemetry-go-contrib packages (#13882)
    
    Coming soon: The Renovate bot (GitHub App) will be renamed to Mend. PRs
    from Renovate will soon appear from 'Mend'. Learn more
    [here](https://redirect.github.com/renovatebot/renovate/discussions/37842).
    
    This PR contains the following updates:
    
    | Package | Change | Age | Confidence |
    |---|---|---|---|
    |
    [go.opentelemetry.io/contrib/bridges/otelzap](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.12.0` -> `v0.13.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2fbridges%2fotelzap/v0.13.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2fbridges%2fotelzap/v0.12.0/v0.13.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.62.0` -> `v0.63.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2finstrumentation%2fgoogle.golang.org%2fgrpc%2fotelgrpc/v0.63.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2finstrumentation%2fgoogle.golang.org%2fgrpc%2fotelgrpc/v0.62.0/v0.63.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.62.0` -> `v0.63.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2finstrumentation%2fnet%2fhttp%2fotelhttp/v0.63.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2finstrumentation%2fnet%2fhttp%2fotelhttp/v0.62.0/v0.63.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/contrib/otelconf](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.16.0` -> `v0.18.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2fotelconf/v0.18.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2fotelconf/v0.16.0/v0.18.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/contrib/propagators/b3](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v1.36.0` -> `v1.38.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2fpropagators%2fb3/v1.38.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2fpropagators%2fb3/v1.36.0/v1.38.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/contrib/zpages](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.62.0` -> `v0.63.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2fzpages/v0.63.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2fzpages/v0.62.0/v0.63.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-go-contrib
    (go.opentelemetry.io/contrib/bridges/otelzap)</summary>
    
    ###
    [`v0.13.0`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/releases/tag/v0.13.0)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/compare/v0.12.0...v0.13.0)
    
    #### \[0.13.0] - 2020-10-09
    
    #### Added
    
    - A Jaeger propagator.
    ([#&#8203;375](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/375))
    
    #### Changed
    
    - The
    `go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc`
    package instrumentation no longer accepts a `Tracer` as an argument to
    the interceptor function.
    Instead, a new `WithTracerProvider` option is added to configure the
    `TracerProvider` used when creating the `Tracer` for the
    instrumentation.
    ([#&#8203;373](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/373))
    - The
    `go.opentelemetry.io/contrib/instrumentation/gopkg.in/macaron.v1/otelmacaron`
    instrumentation now accepts a `TracerProvider` rather than a `Tracer`.
    ([#&#8203;374](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/374))
    - Remove `go.opentelemetry.io/otel/sdk` dependency from instrumentation.
    ([#&#8203;381](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/381))
    - Use `httpsnoop` in
    `go.opentelemetry.io/contrib/instrumentation/github.com/gorilla/mux/otelmux`
    to ensure `http.ResponseWriter` additional interfaces are preserved.
    ([#&#8203;388](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/388))
    
    ##### Fixed
    
    - The
    `go.opentelemetry.io/contrib/instrumentation/github.com/labstack/echo/otelecho.Middleware`
    no longer sends duplicate errors to the global `ErrorHandler`.
    ([#&#8203;377](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/377),
    [#&#8203;364](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/364))
    - The import comment in
    `go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp` is now
    correctly quoted.
    ([#&#8203;379](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/379))
    - The B3 propagator sets the sample bitmask when the sampling decision
    is `debug`.
    ([#&#8203;369](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/369))
    
    # Raw changes made between v0.12.0 and v0.13.0
    
    
    [`af2dfc7`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/af2dfc7baf3392e81ea4b6938b3a8a5d39cf9db7)
    Pre release v0.13.0
    ([#&#8203;391](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/391))
    
    [`a84ddfe`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/a84ddfe37e70e2827773d38fc386ab0657d00d80)
    use httpsnoop to ensure http.ResponseWriter additional interfaces are
    preserved
    ([#&#8203;388](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/388))
    
    [`bbc03fa`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/bbc03fa6f1ad325293b5bd5c14f01a46585a5bbe)
    \[propagator] Add Jaeger propagator
    ([#&#8203;375](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/375))
    
    [`082e67f`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/082e67ff36583964125117e4df72de7ab9c805d4)
    Bump github.com/shirou/gopsutil from 2.20.8+incompatible to
    2.20.9+incompatible in /instrumentation/host
    ([#&#8203;384](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/384))
    
    [`97f3114`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/97f311484668f7153e669413734546a03bf420a9)
    Update gopkg.in/macaron.v1/otelmacaron instrumentation to use
    TracerProvider
    ([#&#8203;374](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/374))
    
    [`a59885b`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/a59885b46682b685fdd35eb8f20f16a736a165d5)
    Update google.golang.org/grpc/otelgrpc instrumentation to not accept
    Tracer
    ([#&#8203;373](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/373))
    
    [`8244cc7`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/8244cc7764d3f537bc055b40a90ff15710ad3173)
    fix(echo): return nil from middleware to handle error only once
    ([#&#8203;377](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/377))
    
    [`e3d25a6`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/e3d25a6f35d86a49d7851f1e3d8087c02201cd52)
    Bump cloud.google.com/go from 0.66.0 to 0.67.0 in /detectors/gcp
    ([#&#8203;383](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/383))
    
    [`7d9570b`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/7d9570beea6207e51b4a72324e3953720fd8e85b)
    Bump github.com/aws/aws-sdk-go from 1.34.32 to 1.35.2 in /detectors/aws
    ([#&#8203;382](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/382))
    
    [`89ae255`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/89ae255fe3e9e961b97974d0e43e2ede5d8ca7d6)
    Remove `go.opentelemetry.io/otel/sdk` dependency from instrumentation
    ([#&#8203;381](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/381))
    
    [`caffe1d`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/caffe1d22fb33bb86bd5311c58bc312abce7a0f8)
    Fix import comment bug
    ([#&#8203;379](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/379))
    
    [`5ef58e7`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/5ef58e7fab40b2226bd7e69ebffd90e221886870)
    Add instrumentation signal table to instrumentation README
    ([#&#8203;372](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/372))
    
    [`71b6d7f`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/71b6d7fc42c235ea005fde85c23fb84df36d3e60)
    \[propagator] Set sample bitmask when sampling decision is debug for B3
    Propagator.
    ([#&#8203;369](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/369))
    
    [`9dc5e0c`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/9dc5e0c25bb9f28e90d0fc62cd98e037eaa38169)
    Bump github.com/aws/aws-sdk-go from 1.34.30 to 1.34.32 in /detectors/aws
    ([#&#8203;370](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/370))
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "on tuesday" (UTC), Automerge - At any
    time (no schedule defined).
    
    🚦 **Automerge**: Disabled by config. Please merge this manually once you
    are satisfied.
    
    ♻ **Rebasing**: Whenever PR becomes conflicted, or you tick the
    rebase/retry checkbox.
    
    👻 **Immortal**: This PR will be recreated if closed unmerged. Get
    [config
    help](https://redirect.github.com/renovatebot/renovate/discussions) if
    that's undesired.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0MS45Ny4xMCIsInVwZGF0ZWRJblZlciI6IjQxLjk3LjEwIiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: otelbot <197425009+otelbot@users.noreply.github.com>
