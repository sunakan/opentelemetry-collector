commit 210e2918f6afc4040d55f04e7ef9fd5cc05e0c8d
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Mon Jul 28 20:20:43 2025 -0700

    fix(deps): update opentelemetry-go monorepo to v1.37.0 (#13515)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Confidence |
    |---|---|---|---|
    |
    [go.opentelemetry.io/otel/sdk](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.36.0` -> `v1.37.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2fsdk/v1.37.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2fsdk/v1.36.0/v1.37.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/otel/sdk/metric](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.36.0` -> `v1.37.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2fsdk%2fmetric/v1.37.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2fsdk%2fmetric/v1.36.0/v1.37.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/otel/trace](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.36.0` -> `v1.37.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2ftrace/v1.37.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2ftrace/v1.36.0/v1.37.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-go
    (go.opentelemetry.io/otel/sdk)</summary>
    
    ###
    [`v1.37.0`](https://redirect.github.com/open-telemetry/opentelemetry-go/releases/tag/v1.37.0):
    Release 1.37.0/0.59.0/0.13.0
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-go/compare/v1.36.0...v1.37.0)
    
    ##### Added
    
    - The `go.opentelemetry.io/otel/semconv/v1.33.0` package.
    The package contains semantic conventions from the `v1.33.0` version of
    the OpenTelemetry Semantic Conventions.
    See the [migration documentation](./semconv/v1.33.0/MIGRATION.md) for
    information on how to upgrade from
    `go.opentelemetry.io/otel/semconv/v1.32.0.`([#&#8203;6799](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6799))
    - The `go.opentelemetry.io/otel/semconv/v1.34.0` package.
    The package contains semantic conventions from the `v1.34.0` version of
    the OpenTelemetry Semantic Conventions.
    ([#&#8203;6812](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6812))
    - Add metric's schema URL as `otel_scope_schema_url` label in
    `go.opentelemetry.io/otel/exporters/prometheus`.
    ([#&#8203;5947](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/5947))
    - Add metric's scope attributes as `otel_scope_[attribute]` labels in
    `go.opentelemetry.io/otel/exporters/prometheus`.
    ([#&#8203;5947](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/5947))
    - Add `EventName` to `EnabledParameters` in
    `go.opentelemetry.io/otel/log`.
    ([#&#8203;6825](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6825))
    - Add `EventName` to `EnabledParameters` in
    `go.opentelemetry.io/otel/sdk/log`.
    ([#&#8203;6825](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6825))
    - Changed handling of `go.opentelemetry.io/otel/exporters/prometheus`
    metric renaming to add unit suffixes when it doesn't match one of the
    pre-defined values in the unit suffix map.
    ([#&#8203;6839](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6839))
    
    ##### Changed
    
    - The semantic conventions have been upgraded from `v1.26.0` to
    `v1.34.0` in `go.opentelemetry.io/otel/bridge/opentracing`.
    ([#&#8203;6827](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6827))
    - The semantic conventions have been upgraded from `v1.26.0` to
    `v1.34.0` in `go.opentelemetry.io/otel/exporters/zipkin`.
    ([#&#8203;6829](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6829))
    - The semantic conventions have been upgraded from `v1.26.0` to
    `v1.34.0` in `go.opentelemetry.io/otel/metric`.
    ([#&#8203;6832](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6832))
    - The semantic conventions have been upgraded from `v1.26.0` to
    `v1.34.0` in `go.opentelemetry.io/otel/sdk/resource`.
    ([#&#8203;6834](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6834))
    - The semantic conventions have been upgraded from `v1.26.0` to
    `v1.34.0` in `go.opentelemetry.io/otel/sdk/trace`.
    ([#&#8203;6835](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6835))
    - The semantic conventions have been upgraded from `v1.26.0` to
    `v1.34.0` in `go.opentelemetry.io/otel/trace`.
    ([#&#8203;6836](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6836))
    - `Record.Resource` now returns `*resource.Resource` instead of
    `resource.Resource` in `go.opentelemetry.io/otel/sdk/log`.
    ([#&#8203;6864](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6864))
    - Retry now shows error cause for context timeout in
    `go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc`,
    `go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetricgrpc`,
    `go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploggrpc`,
    `go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp`,
    `go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetrichttp`,
    `go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploghttp`.
    ([#&#8203;6898](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6898))
    
    ##### Fixed
    
    - Stop stripping trailing slashes from configured endpoint URL in
    `go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc`.
    ([#&#8203;6710](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6710))
    - Stop stripping trailing slashes from configured endpoint URL in
    `go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp`.
    ([#&#8203;6710](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6710))
    - Stop stripping trailing slashes from configured endpoint URL in
    `go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetricgrpc`.
    ([#&#8203;6710](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6710))
    - Stop stripping trailing slashes from configured endpoint URL in
    `go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetrichttp`.
    ([#&#8203;6710](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6710))
    - Validate exponential histogram scale range for Prometheus
    compatibility in `go.opentelemetry.io/otel/exporters/prometheus`.
    ([#&#8203;6822](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6822))
    - Context cancellation during metric pipeline produce does not corrupt
    data in `go.opentelemetry.io/otel/sdk/metric`.
    ([#&#8203;6914](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6914))
    
    ##### Removed
    
    - `go.opentelemetry.io/otel/exporters/prometheus` no longer exports
    `otel_scope_info` metric.
    ([#&#8203;6770](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6770))
    
    ##### What's Changed
    
    - Fix dependencies to unreleased sdk/logtest by
    [@&#8203;dmathieu](https://redirect.github.com/dmathieu) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6800](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6800)
    - Release experimental logs 0.12.1 by
    [@&#8203;dmathieu](https://redirect.github.com/dmathieu) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6802](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6802)
    - Fix broken link in changelog by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6805](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6805)
    - Retract v0.12.0 for log exporters by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6804](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6804)
    - chore(deps): update python:3.13.3-slim-bullseye docker digest to
    [`45338d2`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/45338d2)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6807](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6807)
    - remove internal/matchers by
    [@&#8203;codeimmortal](https://redirect.github.com/codeimmortal) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6777](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6777)
    - Release log/v0.12.2 by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6806](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6806)
    - chore(deps): update python:3.13.3-slim-bullseye docker digest to
    [`f0acec6`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/f0acec6)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6810](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6810)
    - Update the required approvals policy by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6783](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6783)
    - Generate `semconv/v1.33.0` by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6799](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6799)
    - chore(deps): update module github.com/jgautheron/goconst to v1.8.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6815](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6815)
    - chore(deps): update module github.com/protonmail/go-crypto to v1.3.0
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6817](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6817)
    - chore(deps): update module github.com/santhosh-tekuri/jsonschema/v6 to
    v6.0.2 by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6818](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6818)
    - Semconv v1.34.0 by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6812](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6812)
    - bridge/opencensus: add test for OTelSpanContextToOC function by
    [@&#8203;highlyavailable](https://redirect.github.com/highlyavailable)
    in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6813](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6813)
    - chore(deps): update module github.com/sashamelentyev/usestdlibvars to
    v1.29.0 by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6820](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6820)
    - prometheus: Add otel\_scope\_schema\_url and otel\_scope\_\[attribute]
    labels by [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/5947](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/5947)
    - Fix/issue 6560 install trace bridge test by
    [@&#8203;highlyavailable](https://redirect.github.com/highlyavailable)
    in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6814](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6814)
    - fix(deps): update module google.golang.org/grpc to v1.72.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6823](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6823)
    - fix(deps): update module go.opentelemetry.io/collector/pdata to
    v1.33.0 by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6824](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6824)
    - chore(deps): update module github.com/golangci/plugin-module-register
    to v0.1.2 by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6826](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6826)
    - chore(deps): update otel/weaver docker tag to v0.15.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6838](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6838)
    - prometheus: remove otel\_scope\_info by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6770](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6770)
    - log,sdk/log: add EventName to EnabledParameters by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6825](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6825)
    - chore(deps): update module github.com/abirdcfly/dupword to v0.1.5 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6840](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6840)
    - Add migration doc generation to semconvgen by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6819](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6819)
    - fix(deps): update module github.com/go-logr/logr to v1.4.3 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6842](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6842)
    - Upgrade semconv to v1.34.0 in OpenTracing bridge by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6827](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6827)
    - Upgrade semconv to v1.34.0 for OTLP templates by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6828](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6828)
    - Upgrade semconv to 1.34.0 in exporters/zipkin by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6829](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6829)
    - Upgrade semconv to 1.34.0 in exporters/stdout by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6830](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6830)
    - Upgrade semconv to 1.34.0 in exporters/prometheus by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6831](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6831)
    - Upgrade semconv to 1.34.0 in metric by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6832](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6832)
    - Upgrade semconv to 1.34.0 in sdk/metric by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6833](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6833)
    - Upgrade semconv to 1.34.0 in sdk/resource by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6834](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6834)
    - Upgrade semconv to 1.34.0 in sdk/trace by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6835](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6835)
    - Upgrade semconv to 1.34.0 in trace by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6836](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6836)
    - Fix semconv instrument types by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6837](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6837)
    - fix(deps): update googleapis to
    [`200df99`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/200df99)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6843](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6843)
    - chore(deps): update module github.com/abirdcfly/dupword to v0.1.6 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6845](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6845)
    - chore(deps): update golang.org/x/telemetry digest to
    [`b2b9eea`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/b2b9eea)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6844](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6844)
    - fix(deps): update module go.opentelemetry.io/proto/otlp to v1.7.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6848](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6848)
    - Checkout code for codecov upload by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6849](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6849)
    - chore(deps): update golang.org/x/telemetry digest to
    [`25d2f78`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/25d2f78)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6851](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6851)
    - Add the FOSSA license scan badge shield by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6852](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6852)
    - Add a CLO monitor exemption for Artifact Hub by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6853](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6853)
    - sdk/trace: Remove internaltest package by
    [@&#8203;Mojachieee](https://redirect.github.com/Mojachieee) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6846](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6846)
    - chore(deps): update ossf/scorecard-action action to v2.4.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6857](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6857)
    - chore(deps): update otel/weaver docker tag to v0.15.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6858](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6858)
    - fix(deps): update golang.org/x to
    [`65e9200`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/65e9200)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6859](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6859)
    - chore(deps): update module github.com/spf13/cast to v1.9.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6861](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6861)
    - fix(deps): update golang.org/x to
    [`b6e5de4`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/b6e5de4)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6860](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6860)
    - Handle custom metric suffix in `exporter/prometheus` to match
    otel-contrib by
    [@&#8203;alexandreLamarre](https://redirect.github.com/alexandreLamarre)
    in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6839](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6839)
    - chore(deps): update module github.com/spf13/cast to v1.9.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6862](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6862)
    - fix(otlptrace,otlpmetric): remove endpoint URL path cleaning by
    [@&#8203;mjq](https://redirect.github.com/mjq) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6710](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6710)
    - sdk/log: Record.Resource to return \*resource.Resource by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6864](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6864)
    - chore(deps): update github/codeql-action action to v3.28.19 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6866](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6866)
    - fix(deps): update googleapis to
    [`513f239`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/513f239)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6867](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6867)
    - chore(deps): update golang.org/x/telemetry digest to
    [`9a9ac21`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/9a9ac21)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6865](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6865)
    - chore(deps): update module github.com/go-git/go-git/v5 to v5.16.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6870](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6870)
    - chore(deps): update python docker tag to v3.13.4 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6871](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6871)
    - chore(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6872](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6872)
    - fix(deps): update module google.golang.org/grpc to v1.73.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6873](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6873)
    - chore(deps): update module golang.org/x/text to v0.26.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6874](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6874)
    - chore(deps): update module github.com/sergi/go-diff to v1.4.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6875](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6875)
    - Only check links in changed files for fail-fast workflow by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6850](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6850)
    - fix(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6877](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6877)
    - chore(deps): update module github.com/go-git/go-git/v5 to v5.16.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6884](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6884)
    - chore(deps): update module github.com/ldez/gomoddirectives to v0.7.0
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6883](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6883)
    - Use more specific self-hosted runner name by
    [@&#8203;opentelemetrybot](https://redirect.github.com/opentelemetrybot)
    in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6879](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6879)
    - chore(deps): update golang.org/x/telemetry digest to
    [`60998fe`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/60998fe)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6880](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6880)
    - fix(deps): update module go.opentelemetry.io/collector/pdata to
    v1.34.0 by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6885](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6885)
    - chore(deps): update golang.org/x/telemetry digest to
    [`4884ade`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/4884ade)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6886](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6886)
    - chore(deps): update python:3.13.4-slim-bullseye docker digest to
    [`473d423`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/473d423)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6889](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6889)
    - chore(deps): update module github.com/ldez/exptostd to v0.4.4 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6888](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6888)
    - chore(deps): update python:3.13.4-slim-bullseye docker digest to
    [`faae1a8`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/faae1a8)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6891](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6891)
    - chore(deps): update golang.org/x/telemetry digest to
    [`9627e99`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/9627e99)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6896](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6896)
    - chore(deps): update github/codeql-action action to v3.29.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6897](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6897)
    - chore(deps): update module github.com/ldez/usetesting to v0.5.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6895](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6895)
    - chore(deps): update python:3.13.4-slim-bullseye docker digest to
    [`ec7d08e`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/ec7d08e)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6894](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6894)
    - Use the cause of the context error in OTLP retry by
    [@&#8203;XSAM](https://redirect.github.com/XSAM) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6898](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6898)
    - chore(deps): update golang.org/x/telemetry digest to
    [`e50bbf1`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/e50bbf1)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6900](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6900)
    - chore(deps): update python docker tag to v3.13.5 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6901](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6901)
    - prometheus: validate exponential histogram scale range
    ([#&#8203;6779](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6779))
    by
    [@&#8203;highlyavailable](https://redirect.github.com/highlyavailable)
    in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6822](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6822)
    - logtest modules to be released with tags by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6876](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6876)
    - chore(deps): update module github.com/securego/gosec/v2 to v2.22.5 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6905](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6905)
    - Add release artifacts signing to the release process by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6855](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6855)
    - chore(deps): update module github.com/go-viper/mapstructure/v2 to
    v2.3.0 by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6906](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6906)
    - chore(deps): update module github.com/mgechev/revive to v1.10.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6841](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6841)
    - Remove internal matchers by
    [@&#8203;Mojachieee](https://redirect.github.com/Mojachieee) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6907](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6907)
    - chore(deps): update golang.org/x/telemetry digest to
    [`8f04292`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/8f04292)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6910](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6910)
    - chore(deps): update module github.com/charmbracelet/x/ansi to v0.9.3
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6912](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6912)
    - chore(deps): update module github.com/grpc-ecosystem/grpc-gateway/v2
    to v2.27.0 by [@&#8203;renovate](https://redirect.github.com/renovate)
    in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6913](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6913)
    - fix(deps): update golang.org/x to
    [`b7579e2`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/b7579e2)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6917](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6917)
    - Ensure context cancellation during metric pipeline produce does not
    corrupt data by
    [@&#8203;alecholmes](https://redirect.github.com/alecholmes) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6914](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6914)
    - chore(deps): update golang.org/x/telemetry digest to
    [`90b6ad3`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/90b6ad3)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6918](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6918)
    - fix(deps): update module github.com/prometheus/common to v0.65.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6921](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6921)
    - chore: flatten bridge/opentracing/internal package by
    [@&#8203;Bakhtiyar-Garashov](https://redirect.github.com/Bakhtiyar-Garashov)
    in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6916](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6916)
    - chore(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6923](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6923)
    - chore(deps): update google.golang.org/genproto/googleapis/rpc digest
    to
    [`513f239`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/513f239)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6922](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6922)
    - Add test for logging from a span in the opentracing bridge by
    [@&#8203;tongoss](https://redirect.github.com/tongoss) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6919](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6919)
    - Use existing schema URLs in tests by
    [@&#8203;dmathieu](https://redirect.github.com/dmathieu) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6924](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6924)
    - chore: add missing ) in GPG hyperlink by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6928](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6928)
    - chore(deps): update module github.com/grpc-ecosystem/grpc-gateway/v2
    to v2.27.1 by [@&#8203;renovate](https://redirect.github.com/renovate)
    in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6930](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6930)
    - chore(deps): update golang.org/x/telemetry digest to
    [`fef9409`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/fef9409)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6929](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6929)
    - Release v1.37.0/v0.59.0/v0.13.0 by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6925](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6925)
    
    ##### New Contributors
    
    - [@&#8203;codeimmortal](https://redirect.github.com/codeimmortal) made
    their first contribution in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6777](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6777)
    - [@&#8203;highlyavailable](https://redirect.github.com/highlyavailable)
    made their first contribution in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6813](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6813)
    - [@&#8203;Mojachieee](https://redirect.github.com/Mojachieee) made
    their first contribution in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6846](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6846)
    -
    [@&#8203;alexandreLamarre](https://redirect.github.com/alexandreLamarre)
    made their first contribution in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6839](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6839)
    - [@&#8203;mjq](https://redirect.github.com/mjq) made their first
    contribution in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6710](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6710)
    - [@&#8203;alecholmes](https://redirect.github.com/alecholmes) made
    their first contribution in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6914](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6914)
    -
    [@&#8203;Bakhtiyar-Garashov](https://redirect.github.com/Bakhtiyar-Garashov)
    made their first contribution in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6916](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6916)
    
    **Full Changelog**:
    https://github.com/open-telemetry/opentelemetry-go/compare/v1.36.0...v1.37.0
    
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
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0MS40My41IiwidXBkYXRlZEluVmVyIjoiNDEuNDMuNSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: otelbot <197425009+otelbot@users.noreply.github.com>
