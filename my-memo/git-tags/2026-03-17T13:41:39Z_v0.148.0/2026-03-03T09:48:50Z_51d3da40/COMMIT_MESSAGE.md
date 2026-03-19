commit 51d3da409f391cd93c9ffec9dfa12e6ae80f999c
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Mar 3 09:48:50 2026 +0000

    Update opentelemetry-go monorepo (#14678)
    
    This PR contains the following updates:
    
    | Package | Change |
    [Age](https://docs.renovatebot.com/merge-confidence/) |
    [Confidence](https://docs.renovatebot.com/merge-confidence/) |
    |---|---|---|---|
    |
    [go.opentelemetry.io/otel](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.40.0` → `v1.41.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel/v1.41.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel/v1.40.0/v1.41.0?slim=true)
    |
    |
    [go.opentelemetry.io/otel/log](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v0.16.0` → `v0.17.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2flog/v0.17.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2flog/v0.16.0/v0.17.0?slim=true)
    |
    |
    [go.opentelemetry.io/otel/metric](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.40.0` → `v1.41.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2fmetric/v1.41.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2fmetric/v1.40.0/v1.41.0?slim=true)
    |
    |
    [go.opentelemetry.io/otel/sdk](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.40.0` → `v1.41.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2fsdk/v1.41.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2fsdk/v1.40.0/v1.41.0?slim=true)
    |
    |
    [go.opentelemetry.io/otel/sdk/metric](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.40.0` → `v1.41.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2fsdk%2fmetric/v1.41.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2fsdk%2fmetric/v1.40.0/v1.41.0?slim=true)
    |
    |
    [go.opentelemetry.io/otel/trace](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.40.0` → `v1.41.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2ftrace/v1.41.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2ftrace/v1.40.0/v1.41.0?slim=true)
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
    [`v1.41.0`](https://redirect.github.com/open-telemetry/opentelemetry-go/releases/tag/v1.41.0):
    /v0.63.0/v0.17.0/v0.0.15
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-go/compare/v1.40.0...v1.41.0)
    
    This release is the last to support [Go 1.24].
    The next release will require at least [Go 1.25].
    
    ##### Added
    
    - Support testing of [Go 1.26].
    ([#&#8203;7902](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7902))
    
    ##### Fixed
    
    - Update `Baggage` in `go.opentelemetry.io/otel/propagation` and `Parse`
    and `New` in `go.opentelemetry.io/otel/baggage` to comply with W3C
    Baggage specification limits.
    `New` and `Parse` now return partial baggage along with an error when
    limits are exceeded.
    Errors from baggage extraction are reported to the global error handler.
    ([#&#8203;7880](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7880))
    
    [Go 1.26]: https://go.dev/doc/go1.26
    
    [Go 1.25]: https://go.dev/doc/go1.25
    
    [Go 1.24]: https://go.dev/doc/go1.24
    
    #### What's Changed
    
    - fix(deps): update googleapis to
    [`ce8ad4c`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/ce8ad4c)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7860](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7860)
    - chore(deps): update otel/weaver docker tag to v0.21.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7865](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7865)
    - fix(deps): update module go.opentelemetry.io/collector/pdata to
    v1.51.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7863](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7863)
    - chore(deps): update golang.org/x/telemetry digest to
    [`fe4bb1c`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/fe4bb1c)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7861](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7861)
    - chore(deps): update golang.org/x/telemetry digest to
    [`aaaaaa5`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/aaaaaa5)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7869](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7869)
    - sdk/log/observ: guard LogProcessed with Enabled by
    [@&#8203;NesterovYehor](https://redirect.github.com/NesterovYehor) in
    [#&#8203;7848](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7848)
    - stdouttrace observability: skip metric work when instruments are
    disabled by
    [@&#8203;NesterovYehor](https://redirect.github.com/NesterovYehor) in
    [#&#8203;7853](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7853)
    - chore(deps): update otel/weaver docker tag to v0.21.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7870](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7870)
    - fix(deps): update googleapis to
    [`546029d`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/546029d)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7871](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7871)
    - stdoutmetric observ: skip metric work when instruments are disabled by
    [@&#8203;NesterovYehor](https://redirect.github.com/NesterovYehor) in
    [#&#8203;7868](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7868)
    - chore(deps): update fossas/fossa-action action to v1.8.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7879](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7879)
    - chore(deps): update github/codeql-action action to v4.32.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7878](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7878)
    - chore(deps): update module github.com/ghostiam/protogetter to v0.3.20
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7877](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7877)
    - chore(deps): update golang.org/x/telemetry digest to
    [`86a5c4b`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/86a5c4b)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7876](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7876)
    - fix(deps): update module golang.org/x/sys to v0.41.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7885](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7885)
    - chore(deps): update module github.com/clipperhouse/uax29/v2 to v2.6.0
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7884](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7884)
    - Checked if instrument enabled before measuring in prometheus by
    [@&#8203;itssaharsh](https://redirect.github.com/itssaharsh) in
    [#&#8203;7866](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7866)
    - exporter/otlploghttp: guard observ metrics with Enabled checks by
    [@&#8203;NesterovYehor](https://redirect.github.com/NesterovYehor) in
    [#&#8203;7813](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7813)
    - chore(deps): update module github.com/go-git/go-git/v5 to v5.16.5 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7886](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7886)
    - chore(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7887](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7887)
    - fix(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7890](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7890)
    - fix(deps): update golang.org/x to
    [`2842357`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/2842357)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7891](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7891)
    - fix(deps): update googleapis to
    [`4cfbd41`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/4cfbd41)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7889](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7889)
    - Checked if instrument enabled before measuring in `oteltracegrpc` by
    [@&#8203;itssaharsh](https://redirect.github.com/itssaharsh) in
    [#&#8203;7825](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7825)
    - Checked if Instrument Enabled before measuring in otlpgrpc by
    [@&#8203;itssaharsh](https://redirect.github.com/itssaharsh) in
    [#&#8203;7824](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7824)
    - chore(deps): update module github.com/grpc-ecosystem/grpc-gateway/v2
    to v2.27.8 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7892](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7892)
    - chore(deps): update module github.com/golangci/golines to v0.15.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7893](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7893)
    - chore(deps): update module github.com/golangci/misspell to v0.8.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7894](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7894)
    - chore(deps): update golang.org/x/telemetry digest to
    [`9f66fae`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/9f66fae)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7898](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7898)
    - fix(deps): update module google.golang.org/grpc to v1.79.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7906](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7906)
    - Support Go 1.26 by
    [@&#8203;dmathieu](https://redirect.github.com/dmathieu) in
    [#&#8203;7902](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7902)
    - fix(deps): update module google.golang.org/grpc to v1.79.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7908](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7908)
    - chore(deps): update github/codeql-action action to v4.32.3 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7909](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7909)
    - chore(deps): update module github.com/kevinburke/ssh\_config to v1.5.0
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7911](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7911)
    - chore(deps): update module github.com/kevinburke/ssh\_config to v1.6.0
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7913](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7913)
    - chore(deps): update actions/stale action to v10.2.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7917](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7917)
    - chore(deps): update module github.com/godoc-lint/godoc-lint to v0.11.2
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7916](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7916)
    - chore(deps): update module github.com/clipperhouse/uax29/v2 to v2.7.0
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7915](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7915)
    - chore(deps): update module github.com/mattn/go-runewidth to v0.0.20 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7918](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7918)
    - chore(deps): update module github.com/grpc-ecosystem/grpc-gateway/v2
    to v2.28.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7921](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7921)
    - Checked if Operation Enabled in `otlptracehttp` before performing
    operation by
    [@&#8203;itssaharsh](https://redirect.github.com/itssaharsh) in
    [#&#8203;7881](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7881)
    - chore(deps): update github/codeql-action action to v4.32.4 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7936](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7936)
    - chore(deps): update module github.com/mirrexone/unqueryvet to v1.5.4
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7939](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7939)
    - chore(deps): update module github.com/uudashr/gocognit to v1.2.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7947](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7947)
    - chore(deps): update module github.com/alexkohler/prealloc to v1.0.3 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7950](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7950)
    - chore(deps): update module github.com/go-git/go-billy/v5 to v5.8.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7953](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7953)
    - chore(deps): update lycheeverse/lychee-action action to v2.8.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7959](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7959)
    - chore(deps): update module github.com/go-git/go-git/v5 to v5.17.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7960](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7960)
    - chore(deps): update actions/setup-go action to v6.3.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7962](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7962)
    - Document metric api interfaces that methods need to be safe to be
    called concurrently by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;7952](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7952)
    - ci: add govulncheck job to CI workflow and update lint target by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [#&#8203;7971](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7971)
    - Comply with W3C Baggage specification limits by
    [@&#8203;XSAM](https://redirect.github.com/XSAM) in
    [#&#8203;7880](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7880)
    - chore(deps): update module github.com/mgechev/revive to v1.14.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7895](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7895)
    - chore(deps): update github artifact actions (major) by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7963](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7963)
    - chore(deps): update module github.com/kisielk/errcheck to v1.10.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7967](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7967)
    - chore(deps): update module github.com/protonmail/go-crypto to v1.4.0
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7969](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7969)
    - fix(deps): update github.com/opentracing-contrib/go-grpc/test digest
    to
    [`d566b4d`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/d566b4d)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7972](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7972)
    - chore(deps): update module github.com/sonatard/noctx to v0.5.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7968](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7968)
    - chore(deps): update module github.com/daixiang0/gci to v0.14.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7973](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7973)
    - chore(deps): update module github.com/securego/gosec/v2 to v2.23.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7899](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7899)
    - Generate semconv/v1.40.0 by
    [@&#8203;ChrsMark](https://redirect.github.com/ChrsMark) in
    [#&#8203;7929](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7929)
    - Revert "Generate semconv/v1.40.0" by
    [@&#8203;dmathieu](https://redirect.github.com/dmathieu) in
    [#&#8203;7978](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7978)
    - chore(deps): update github/codeql-action action to v4.32.5 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7980](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7980)
    - fix: add error handling for insecure HTTP endpoints with TLS client
    configuration by
    [@&#8203;sandy2008](https://redirect.github.com/sandy2008) in
    [#&#8203;7914](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7914)
    - Release 1.41.0/0.63.0/0.17.0/0.0.15 by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [#&#8203;7977](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7977)
    
    #### New Contributors
    
    - [@&#8203;NesterovYehor](https://redirect.github.com/NesterovYehor)
    made their first contribution in
    [#&#8203;7848](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7848)
    - [@&#8203;sandy2008](https://redirect.github.com/sandy2008) made their
    first contribution in
    [#&#8203;7914](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7914)
    
    **Full Changelog**:
    <https://github.com/open-telemetry/opentelemetry-go/compare/v1.40.0...v1.41.0>
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0My40OC4xIiwidXBkYXRlZEluVmVyIjoiNDMuNDguMSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: otelbot <197425009+otelbot@users.noreply.github.com>
