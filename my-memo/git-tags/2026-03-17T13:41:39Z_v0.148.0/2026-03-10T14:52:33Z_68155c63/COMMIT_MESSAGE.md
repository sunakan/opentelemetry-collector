commit 68155c63651fc162f2411fe1cb1110f9ac9e3486
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Mar 10 07:52:33 2026 -0700

    fix(deps): update all opentelemetry-go-contrib packages (#14738)
    
    This PR contains the following updates:
    
    | Package | Change |
    [Age](https://docs.renovatebot.com/merge-confidence/) |
    [Confidence](https://docs.renovatebot.com/merge-confidence/) |
    |---|---|---|---|
    |
    [go.opentelemetry.io/contrib/bridges/otelzap](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.16.0` → `v0.17.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2fbridges%2fotelzap/v0.17.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2fbridges%2fotelzap/v0.16.0/v0.17.0?slim=true)
    |
    |
    [go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.66.0` → `v0.67.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2finstrumentation%2fgoogle.golang.org%2fgrpc%2fotelgrpc/v0.67.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2finstrumentation%2fgoogle.golang.org%2fgrpc%2fotelgrpc/v0.66.0/v0.67.0?slim=true)
    |
    |
    [go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.66.0` → `v0.67.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2finstrumentation%2fnet%2fhttp%2fotelhttp/v0.67.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2finstrumentation%2fnet%2fhttp%2fotelhttp/v0.66.0/v0.67.0?slim=true)
    |
    |
    [go.opentelemetry.io/contrib/otelconf](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.21.0` → `v0.22.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2fotelconf/v0.22.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2fotelconf/v0.21.0/v0.22.0?slim=true)
    |
    |
    [go.opentelemetry.io/contrib/propagators/b3](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v1.41.0` → `v1.42.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2fpropagators%2fb3/v1.42.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2fpropagators%2fb3/v1.41.0/v1.42.0?slim=true)
    |
    |
    [go.opentelemetry.io/contrib/zpages](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib)
    | `v0.66.0` → `v0.67.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2fzpages/v0.67.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2fzpages/v0.66.0/v0.67.0?slim=true)
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
    [`v0.17.0`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/releases/tag/v0.17.0)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/compare/v0.16.0...v0.17.0)
    
    Update `go.opentelemetry.io/otel` dependency to
    [v0.17.0](https://redirect.github.com/open-telemetry/opentelemetry-go/releases/tag/v0.17.0)
    
    ##### Added
    
    - Add `ot-tracer` propagator
    ([#&#8203;562](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/562))
    
    ##### Changed
    
    - Rename project default branch from `master` to `main`.
    
    ##### Fixed
    
    - Added failure message for AWS ECS resource detector for better
    debugging
    ([#&#8203;568](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/568))
    
    ***
    
    Raw changes made between v0.16.0 and v0.17.0
    
    
    [`cabeeb5`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/cabeeb5eaae82d11dba465771bdd761ad2f21017)
    Bump github.com/labstack/echo/v4 from 4.1.17 to 4.2.0 in
    /instrumentation/github.com/labstack/echo/otelecho
    ([#&#8203;577](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/577))
    
    [`7fe84fd`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/7fe84fdca70ce8eb56557f0d1b4f3a0784dda9db)
    Bump github.com/labstack/echo/v4
    ([#&#8203;578](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/578))
    
    [`8d6e61b`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/8d6e61be853b075afd04be982d5465056072a0fe)
    Bump github.com/aws/aws-sdk-go from 1.37.6 to 1.37.10 in /detectors/aws
    ([#&#8203;576](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/576))
    
    [`bd90f3e`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/bd90f3e3b2ae32332da6d19362604c1dfc53b33e)
    Eks resource detector bugfix
    ([#&#8203;575](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/575))
    
    [`e532370`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/e532370ba236af1b301852a9adc1fc370114e007)
    (origin/main) Fix ECS resource detector bug
    ([#&#8203;569](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/569))
    
    [`b87d221`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/b87d221da861f89deb2ba9d55745f802e0befea2)
    Bump cloud.google.com/go from 0.75.0 to 0.76.0 in /detectors/gcp
    ([#&#8203;572](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/572))
    
    [`957a23c`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/957a23cc454a8d230f74007a1425096b7ae2317f)
    Bump actions/cache from v2 to v2.1.4
    ([#&#8203;571](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/571))
    
    [`e3b511e`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/e3b511e7d10de0c1f68620b24bb604751bb48dd3)
    Bump github.com/aws/aws-sdk-go from 1.37.1 to 1.37.6 in /detectors/aws
    ([#&#8203;570](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/570))
    
    [`33003dd`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/33003ddbceb7ef3f4dd9b1054799ac1bfc6fca1f)
    Bump go.mongodb.org/mongo-driver
    ([#&#8203;573](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/573))
    
    [`cc69f93`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/cc69f93ac0599ca8c32981b5d3213167006f120c)
    added failure message - ECS resource detector
    ([#&#8203;568](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/568))
    
    [`fd60b5f`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/fd60b5f9e174703969daa0c145aef668a2851f7a)
    Add ot-tracer-\* propagator
    ([#&#8203;562](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/562))
    
    [`bc8b54d`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/bc8b54dea68481cebb9e73a25f412130e5d8dd6a)
    Update default branch name to main
    ([#&#8203;567](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/567))
    
    [`e0fb74f`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/e0fb74f46649166e00322bfd52c0cb788f0d459c)
    Bump github.com/golangci/golangci-lint from 1.35.2 to 1.36.0 in /tools
    ([#&#8203;565](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/565))
    
    [`feebb9b`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/feebb9b04ffd2afc3c6ed4dd3c48c11d4ffcd68f)
    Bump github.com/aws/aws-sdk-go from 1.36.29 to 1.37.1 in /detectors/aws
    ([#&#8203;566](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/566))
    
    [`a7d455d`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/a7d455df9d48eeeb02e9ec0ae3baba9ed288c01b)
    (upstream/master) Update workflows to include main branch as trigger
    ([#&#8203;564](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/564))
    
    [`90490ec`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/90490eca4f9dd4e1f5a47d69b010a1f958c8b43f)
    (origin/master, origin/HEAD) Bump github.com/aws/aws-sdk-go from 1.36.23
    to 1.36.29 in /detectors/aws
    ([#&#8203;558](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/558))
    
    [`33f383b`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/33f383bb829594f5b1162376e5c3e1e88a36ea58)
    Bump cloud.google.com/go from 0.74.0 to 0.75.0 in /detectors/gcp
    ([#&#8203;531](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/531))
    
    [`6e9f6d3`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/6e9f6d30f8ecf8833b1035ba653e6754e6081b7f)
    Bump google.golang.org/grpc from 1.34.0 to 1.35.0 in
    /instrumentation/google.golang.org/grpc/otelgrpc
    ([#&#8203;543](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/543))
    
    [`a101606`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/a101606952e5996884fe5eaa2801db4674ca273a)
    Bump github.com/gogo/protobuf from 1.3.1 to 1.3.2 in
    /exporters/metric/cortex
    ([#&#8203;530](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/530))
    
    [`3d7fac5`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/3d7fac58444908b490d164a5b34d83e801a26168)
    Upgrade github.com/stretchr/testify from v1.6.1 to v1.7.0
    ([#&#8203;557](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/557))
    
    [`40b35ec`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/40b35eceb6f067533f91d7b57af21d82ef3085d9)
    Bump github.com/golangci/golangci-lint from 1.35.0 to 1.35.2 in /tools
    ([#&#8203;526](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/526))
    
    [`37f53a3`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/37f53a37e8987816544ec5c925499dcd131e4428)
    Bump github.com/stretchr/testify from 1.6.1 to 1.7.0 in
    /instrumentation/runtime
    ([#&#8203;525](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/525))
    
    [`a77bcb3`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/a77bcb366c76bc19ee5045321586bb2f2cfdcc23)
    Bump github.com/stretchr/testify in /exporters/metric/dogstatsd
    ([#&#8203;524](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/524))
    
    [`77a5929`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/77a5929d7a0335b95f51fba8331a58f205ec16e3)
    Bump google.golang.org/grpc
    ([#&#8203;545](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/545))
    
    [`bc4e070`](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/commit/bc4e07094979b460b8fd708e94ac61c2fcdb26a2)
    Add code-coverage configuration to allow 1% delta
    ([#&#8203;555](https://redirect.github.com/open-telemetry/opentelemetry-go-contrib/issues/555))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0My41OS4wIiwidXBkYXRlZEluVmVyIjoiNDMuNTkuMCIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: otelbot <197425009+otelbot@users.noreply.github.com>
