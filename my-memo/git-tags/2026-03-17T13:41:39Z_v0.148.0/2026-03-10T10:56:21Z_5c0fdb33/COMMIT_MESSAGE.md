commit 5c0fdb3341708bcd8f677d8abcba481660202cf9
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Mar 10 10:56:21 2026 +0000

    fix(deps): update opentelemetry-go monorepo (#14747)
    
    This PR contains the following updates:
    
    | Package | Change |
    [Age](https://docs.renovatebot.com/merge-confidence/) |
    [Confidence](https://docs.renovatebot.com/merge-confidence/) |
    |---|---|---|---|
    |
    [go.opentelemetry.io/otel](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.41.0` → `v1.42.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel/v1.42.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel/v1.41.0/v1.42.0?slim=true)
    |
    |
    [go.opentelemetry.io/otel/log](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v0.17.0` → `v0.18.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2flog/v0.18.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2flog/v0.17.0/v0.18.0?slim=true)
    |
    |
    [go.opentelemetry.io/otel/metric](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.41.0` → `v1.42.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2fmetric/v1.42.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2fmetric/v1.41.0/v1.42.0?slim=true)
    |
    |
    [go.opentelemetry.io/otel/sdk](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.41.0` → `v1.42.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2fsdk/v1.42.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2fsdk/v1.41.0/v1.42.0?slim=true)
    |
    |
    [go.opentelemetry.io/otel/sdk/metric](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.41.0` → `v1.42.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2fsdk%2fmetric/v1.42.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2fsdk%2fmetric/v1.41.0/v1.42.0?slim=true)
    |
    |
    [go.opentelemetry.io/otel/trace](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.41.0` → `v1.42.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2ftrace/v1.42.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2ftrace/v1.41.0/v1.42.0?slim=true)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the [Dependency
    Dashboard](../issues/8903) for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-go
    (go.opentelemetry.io/otel)</summary>
    
    ###
    [`v1.42.0`](https://redirect.github.com/open-telemetry/opentelemetry-go/releases/tag/v1.42.0):
    /v0.64.0/v0.18.0/v0.0.16
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-go/compare/v1.41.0...v1.42.0)
    
    ##### Added
    
    - Add `go.opentelemetry.io/otel/semconv/v1.40.0` package.
    The package contains semantic conventions from the `v1.40.0` version of
    the OpenTelemetry Semantic Conventions.
    See the [migration documentation](./semconv/v1.40.0/MIGRATION.md) for
    information on how to upgrade from
    `go.opentelemetry.io/otel/semconv/v1.39.0`.
    ([#&#8203;7985](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7985))
    - Add `Err` and `SetErr` on `Record` in `go.opentelemetry.io/otel/log`
    to attach an error and set record exception attributes in
    `go.opentelemetry.io/otel/log/sdk`.
    ([#&#8203;7924](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7924))
    
    ##### Changed
    
    - `TracerProvider.ForceFlush` in `go.opentelemetry.io/otel/sdk/trace`
    joins errors together and continues iteration through SpanProcessors as
    opposed to returning the first encountered error without attempting
    exports on subsequent SpanProcessors.
    ([#&#8203;7856](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7856))
    
    ##### Fixed
    
    - Fix missing `request.GetBody` in
    `go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetrichttp` to
    correctly handle HTTP2 GOAWAY frame.
    ([#&#8203;7931](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7931))
    - Fix semconv v1.39.0 generated metric helpers skipping required
    attributes when extra attributes were empty.
    ([#&#8203;7964](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7964))
    - Preserve W3C TraceFlags bitmask (including the random Trace ID flag)
    during trace context extraction and injection in
    `go.opentelemetry.io/otel/propagation`.
    ([#&#8203;7834](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7834))
    
    ##### Removed
    
    - Drop support for \[Go 1.24].
    ([#&#8203;7984](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7984))
    
    #### What's Changed
    
    - fix changelog protection marker by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [#&#8203;7986](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7986)
    - Drop support for Go 1.24 by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7984](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7984)
    - fix(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7907](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7907)
    - chore(deps): update module go.opentelemetry.io/collector/featuregate
    to v1.53.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7981](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7981)
    - chore(deps): update benchmark-action/github-action-benchmark action to
    v1.21.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7989](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7989)
    - fix(deps): update module go.opentelemetry.io/collector/pdata to
    v1.53.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7982](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7982)
    - Revert "Revert "Generate semconv/v1.40.0"" by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7985](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7985)
    - support stdlib request.GetBody on metrics by
    [@&#8203;marifari-hue](https://redirect.github.com/marifari-hue) in
    [#&#8203;7931](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7931)
    - attribute: add TestNotEquivalence and equality operator tests by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [#&#8203;7979](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7979)
    - Refactor benchmark CI by
    [@&#8203;XSAM](https://redirect.github.com/XSAM) in
    [#&#8203;7873](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7873)
    - chore(deps): update module github.com/securego/gosec/v2 to v2.24.7 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7988](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7988)
    - chore(deps): pin codspeedhq/action action to
    [`df47568`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/df47568)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7996](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7996)
    - chore(deps): update actions/checkout action to v6.0.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7997](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7997)
    - chore(deps): update codspeedhq/action action to v4.11.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7999](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7999)
    - Upgrade to semconv/v1.40.0 by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7991](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7991)
    - Regenerate semconv/v1.40.0/MIGRATION.md by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7992](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7992)
    - fix: generated semconv helpers skipping attributes by
    [@&#8203;victoraugustolls](https://redirect.github.com/victoraugustolls)
    in
    [#&#8203;7964](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7964)
    - Feat: Have SpanContext support the new W3C random flag. by
    [@&#8203;nikhilmantri0902](https://redirect.github.com/nikhilmantri0902)
    in
    [#&#8203;7834](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7834)
    - Semconv metric helper caller-slice mutation fix by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7993](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7993)
    - Fix semconv generated error type to check error chain for custom type
    declaration by [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7994](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7994)
    - refactor: replace uint64 and int32 with atomic types in tests by
    [@&#8203;alexandear](https://redirect.github.com/alexandear) in
    [#&#8203;7941](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7941)
    - chore(deps): update golang.org/x/telemetry digest to
    [`18da590`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/18da590)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;8000](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/8000)
    - TracerProvider ForceFlush() Error Fix by
    [@&#8203;sawamurataxman](https://redirect.github.com/sawamurataxman) in
    [#&#8203;7856](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7856)
    - log: add error field to Record and make SDK to emit exception
    attributes by [@&#8203;iblancasa](https://redirect.github.com/iblancasa)
    in
    [#&#8203;7924](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7924)
    - chore(deps): update dependency codespell to v2.4.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;8003](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/8003)
    - chore(deps): update github/codeql-action action to v4.32.6 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;8004](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/8004)
    - chore(deps): update codspeedhq/action action to v4.11.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;8001](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/8001)
    - fix(deps): update module google.golang.org/grpc to v1.79.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;8007](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/8007)
    - chore(deps): update module github.com/mgechev/revive to v1.15.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;8009](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/8009)
    - chore(deps): update golang.org/x/telemetry digest to
    [`e526e8a`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/e526e8a)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;8010](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/8010)
    - Release v1.42.0/v0.64.0/v0.18.0/v0.0.16 by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [#&#8203;8006](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/8006)
    
    #### New Contributors
    
    - [@&#8203;marifari-hue](https://redirect.github.com/marifari-hue) made
    their first contribution in
    [#&#8203;7931](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7931)
    -
    [@&#8203;victoraugustolls](https://redirect.github.com/victoraugustolls)
    made their first contribution in
    [#&#8203;7964](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7964)
    - [@&#8203;sawamurataxman](https://redirect.github.com/sawamurataxman)
    made their first contribution in
    [#&#8203;7856](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7856)
    - [@&#8203;iblancasa](https://redirect.github.com/iblancasa) made their
    first contribution in
    [#&#8203;7924](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7924)
    
    **Full Changelog**:
    <https://github.com/open-telemetry/opentelemetry-go/compare/v1.41.0...v1.42.0>
    
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
