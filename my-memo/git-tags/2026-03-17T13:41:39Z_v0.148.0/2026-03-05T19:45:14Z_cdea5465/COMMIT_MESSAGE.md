commit cdea546515462add78f9afa4eab086b2d299e5fc
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Thu Mar 5 19:45:14 2026 +0000

    Update All opentelemetry-go-contrib packages (#14630)
    
    This PR contains the following updates:
    
    | Package | Change |
    [Age](https://docs.renovatebot.com/merge-confidence/) |
    [Confidence](https://docs.renovatebot.com/merge-confidence/) |
    |---|---|---|---|
    |
    [go.opentelemetry.io/contrib/bridges/otelzap](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.15.0` → `v0.16.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2fbridges%2fotelzap/v0.16.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2fbridges%2fotelzap/v0.15.0/v0.16.0?slim=true)
    |
    |
    [go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.65.0` → `v0.66.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2finstrumentation%2fgoogle.golang.org%2fgrpc%2fotelgrpc/v0.66.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2finstrumentation%2fgoogle.golang.org%2fgrpc%2fotelgrpc/v0.65.0/v0.66.0?slim=true)
    |
    |
    [go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.65.0` → `v0.66.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2finstrumentation%2fnet%2fhttp%2fotelhttp/v0.66.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2finstrumentation%2fnet%2fhttp%2fotelhttp/v0.65.0/v0.66.0?slim=true)
    |
    |
    [go.opentelemetry.io/contrib/otelconf](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.18.0` → `v0.21.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2fotelconf/v0.21.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2fotelconf/v0.18.0/v0.21.0?slim=true)
    |
    |
    [go.opentelemetry.io/contrib/propagators/b3](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v1.40.0` → `v1.41.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2fpropagators%2fb3/v1.41.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2fpropagators%2fb3/v1.40.0/v1.41.0?slim=true)
    |
    |
    [go.opentelemetry.io/contrib/zpages](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.65.0` → `v0.66.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2fzpages/v0.66.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2fzpages/v0.65.0/v0.66.0?slim=true)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the [Dependency
    Dashboard](../issues/8903) for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-go-contrib
    (go.opentelemetry.io/contrib/bridges/otelzap)</summary>
    
    ###
    [`v0.16.0`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/releases/tag/v0.16.0)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/compare/v0.15.0...v0.16.0)
    
    #### \[0.16.0] - 2021-01-14
    
    ##### Fixed
    
    - Fix module path for AWS ECS resource detector
    ([#&#8203;517](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/517))
    
    # Raw changes made between v0.15.1 and v0.16.0
    
    
    [`65367f2`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/65367f2b373efda45942c5c37b4332a31b226b98)
    Prepare v0.16.0 release
    ([#&#8203;523](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/523))
    
    [`cd07cf3`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/cd07cf34dadec5ee11bac3bbdf46e1e7880fda5c)
    Fix module path for AWS ECS resource detector
    ([#&#8203;517](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/517))
    
    [`c07a08f`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/c07a08f229021158b7ccd1d438efb186eae24fb5)
    Bump github.com/golangci/golangci-lint from 1.34.1 to 1.35.0 in /tools
    ([#&#8203;519](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/519))
    
    [`7717b1d`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/7717b1d75c0f344f8a6737f355975cf2f8f44b1c)
    Bump github.com/aws/aws-sdk-go from 1.36.19 to 1.36.23 in /detectors/aws
    ([#&#8203;520](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/520))
    
    [`c047d14`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/c047d14d67ab6fbd4895c7e57cdd163fc74c9f66)
    Update CI badge for README
    ([#&#8203;516](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/516))
    
    [`cede46c`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/cede46c48337cab9b8d945ec5f4c8c2de4905bb2)
    Merge code coverage output into single file for codecov.io
    ([#&#8203;514](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/514))
    
    [`26c2b18`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/26c2b1846c5527cd383731c4c33171a18354061f)
    Remove CircleCI config
    ([#&#8203;513](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/513))
    
    [`0ca2a70`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/0ca2a705094e6cae8c34d90f1f0ac3b6f581e864)
    Adding Security Workflows to GitHub Actions (2/2): gosec workflow
    ([#&#8203;507](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/507))
    
    [`f6da9db`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/f6da9dbb5237f41e4f428a6276d8db20ce79bc99)
    Adding Security Workflows to GitHub Actions (1/2): codeql workflow
    ([#&#8203;506](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/506))
    
    [`ccf6b73`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/ccf6b7344f82998cdf8a3007d390c48d9feb38dd)
    Bump github.com/aws/aws-sdk-go from 1.36.15 to 1.36.19 in /detectors/aws
    ([#&#8203;511](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/511))
    
    [`3e8de75`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/3e8de75f4caab8f013dd0884bd13854c6ad9ce4a)
    Bump github.com/golangci/golangci-lint from 1.33.0 to 1.34.1 in /tools
    ([#&#8203;510](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/510))
    
    [`faf24ad`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/faf24adc3399598768096428427294b00ebaa8f0)
    Add [@&#8203;dashpole](https://redirect.github.com/dashpole) as a
    project Approver
    ([#&#8203;498](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/498))
    
    [`c1aee10`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/c1aee104bc2163ef7ac529425008dff44a6c6dbd)
    Add instrumentation request issue templates
    ([#&#8203;500](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/500))
    
    [`c9c0a40`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/c9c0a40d8bdcf16f30ab1a59cd60021a1388b2e0)
    Bump github.com/aws/aws-sdk-go from 1.36.12 to 1.36.15 in /detectors/aws
    ([#&#8203;503](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/503))
    
    [`683e08e`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/683e08e62275e32ace1745ba484a9684d4ba63cb)
    Bump github.com/aws/aws-sdk-go from 1.36.7 to 1.36.12 in /detectors/aws
    ([#&#8203;499](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/499))
    
    [`ec22a4d`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/ec22a4dbd12c3163562dd09a6637031df0a0afb7)
    adding fetch depth
    ([#&#8203;497](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/497))
    
    [`31b2ca6`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/31b2ca6f1895722046e685a50de7a0cc582b2768)
    Migrate CircleCI ci.yml workflow to GitHub Actions
    ([#&#8203;476](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/476))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0My4yNi41IiwidXBkYXRlZEluVmVyIjoiNDMuNTYuMCIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: otelbot <197425009+otelbot@users.noreply.github.com>
