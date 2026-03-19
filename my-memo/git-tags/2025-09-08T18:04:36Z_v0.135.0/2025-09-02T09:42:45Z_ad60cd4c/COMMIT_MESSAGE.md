commit ad60cd4c6d0e98102d31a96f849db9eae20d3e20
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Sep 2 09:42:45 2025 +0000

    Update opentelemetry-go monorepo (#13747)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Confidence |
    |---|---|---|---|
    |
    [go.opentelemetry.io/otel](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.37.0` -> `v1.38.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel/v1.38.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel/v1.37.0/v1.38.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/otel/log](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v0.13.0` -> `v0.14.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2flog/v0.14.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2flog/v0.13.0/v0.14.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/otel/log/logtest](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v0.13.0` -> `v0.14.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2flog%2flogtest/v0.14.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2flog%2flogtest/v0.13.0/v0.14.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/otel/metric](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.37.0` -> `v1.38.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2fmetric/v1.38.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2fmetric/v1.37.0/v1.38.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/otel/sdk](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.37.0` -> `v1.38.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2fsdk/v1.38.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2fsdk/v1.37.0/v1.38.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/otel/sdk/metric](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.37.0` -> `v1.38.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2fsdk%2fmetric/v1.38.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2fsdk%2fmetric/v1.37.0/v1.38.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/otel/trace](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.37.0` -> `v1.38.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2ftrace/v1.38.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2ftrace/v1.37.0/v1.38.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-go
    (go.opentelemetry.io/otel)</summary>
    
    ###
    [`v1.38.0`](https://redirect.github.com/open-telemetry/opentelemetry-go/releases/tag/v1.38.0):
    /v0.60.0/v0.14.0/v0.0.13
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-go/compare/v1.37.0...v1.38.0)
    
    ##### Overview
    
    This release is the last to support [Go 1.23]. The next release will
    require at least [Go 1.24].
    
    ##### Added
    
    - Add native histogram exemplar support in
    `go.opentelemetry.io/otel/exporters/prometheus`.
    ([#&#8203;6772](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6772))
    - Add template attribute functions to the
    `go.opentelmetry.io/otel/semconv/v1.34.0` package.
    ([#&#8203;6939](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6939))
      - `ContainerLabel`
      - `DBOperationParameter`
      - `DBSystemParameter`
      - `HTTPRequestHeader`
      - `HTTPResponseHeader`
      - `K8SCronJobAnnotation`
      - `K8SCronJobLabel`
      - `K8SDaemonSetAnnotation`
      - `K8SDaemonSetLabel`
      - `K8SDeploymentAnnotation`
      - `K8SDeploymentLabel`
      - `K8SJobAnnotation`
      - `K8SJobLabel`
      - `K8SNamespaceAnnotation`
      - `K8SNamespaceLabel`
      - `K8SNodeAnnotation`
      - `K8SNodeLabel`
      - `K8SPodAnnotation`
      - `K8SPodLabel`
      - `K8SReplicaSetAnnotation`
      - `K8SReplicaSetLabel`
      - `K8SStatefulSetAnnotation`
      - `K8SStatefulSetLabel`
      - `ProcessEnvironmentVariable`
      - `RPCConnectRPCRequestMetadata`
      - `RPCConnectRPCResponseMetadata`
      - `RPCGRPCRequestMetadata`
      - `RPCGRPCResponseMetadata`
    - Add `ErrorType` attribute helper function to the
    `go.opentelmetry.io/otel/semconv/v1.34.0` package.
    ([#&#8203;6962](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6962))
    - Add `WithAllowKeyDuplication` in `go.opentelemetry.io/otel/sdk/log`
    which can be used to disable deduplication for log records.
    ([#&#8203;6968](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6968))
    - Add `WithCardinalityLimit` option to configure the cardinality limit
    in `go.opentelemetry.io/otel/sdk/metric`.
    ([#&#8203;6996](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6996),
    [#&#8203;7065](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7065),
    [#&#8203;7081](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7081),
    [#&#8203;7164](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7164),
    [#&#8203;7165](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7165),
    [#&#8203;7179](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7179))
    - Add `Clone` method to `Record` in `go.opentelemetry.io/otel/log` that
    returns a copy of the record with no shared state.
    ([#&#8203;7001](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7001))
    - Add experimental self-observability span and batch span processor
    metrics in `go.opentelemetry.io/otel/sdk/trace`. Check the
    `go.opentelemetry.io/otel/sdk/trace/internal/x` package documentation
    for more information.
    ([#&#8203;7027](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7027),
    [#&#8203;6393](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6393),
    [#&#8203;7209](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7209))
    - The `go.opentelemetry.io/otel/semconv/v1.36.0` package. The package
    contains semantic conventions from the `v1.36.0` version of the
    OpenTelemetry Semantic Conventions. See the [migration
    documentation](./semconv/v1.36.0/MIGRATION.md) for information on how to
    upgrade from
    `go.opentelemetry.io/otel/semconv/v1.34.0.`([#&#8203;7032](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7032),
    [#&#8203;7041](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7041))
    - Add support for configuring Prometheus name translation using
    `WithTranslationStrategy` option in
    `go.opentelemetry.io/otel/exporters/prometheus`. The current default
    translation strategy when UTF-8 mode is enabled is
    `NoUTF8EscapingWithSuffixes`, but a future release will change the
    default strategy to `UnderscoreEscapingWithSuffixes` for compliance with
    the specification.
    ([#&#8203;7111](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7111))
    - Add experimental self-observability log metrics in
    `go.opentelemetry.io/otel/sdk/log`. Check the
    `go.opentelemetry.io/otel/sdk/log/internal/x` package documentation for
    more information.
    ([#&#8203;7121](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7121))
    - Add experimental self-observability trace exporter metrics in
    `go.opentelemetry.io/otel/exporters/stdout/stdouttrace`. Check the
    `go.opentelemetry.io/otel/exporters/stdout/stdouttrace/internal/x`
    package documentation for more information.
    ([#&#8203;7133](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7133))
    - Support testing of \[Go 1.25].
    ([#&#8203;7187](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7187))
    - The `go.opentelemetry.io/otel/semconv/v1.37.0` package. The package
    contains semantic conventions from the `v1.37.0` version of the
    OpenTelemetry Semantic Conventions. See the [migration
    documentation](./semconv/v1.37.0/MIGRATION.md) for information on how to
    upgrade from
    `go.opentelemetry.io/otel/semconv/v1.36.0.`([#&#8203;7254](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7254))
    
    ##### Changed
    
    - Optimize `TraceIDFromHex` and `SpanIDFromHex` in
    `go.opentelemetry.io/otel/sdk/trace`.
    ([#&#8203;6791](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6791))
    - Change `AssertEqual` in `go.opentelemetry.io/otel/log/logtest` to
    accept `TestingT` in order to support benchmarks and fuzz tests.
    ([#&#8203;6908](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6908))
    - Change `DefaultExemplarReservoirProviderSelector` in
    `go.opentelemetry.io/otel/sdk/metric` to use `runtime.GOMAXPROCS(0)`
    instead of `runtime.NumCPU()` for the `FixedSizeReservoirProvider`
    default size.
    ([#&#8203;7094](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7094))
    
    ##### Fixed
    
    - `SetBody` method of `Record` in `go.opentelemetry.io/otel/sdk/log` now
    deduplicates key-value collections (`log.Value` of `log.KindMap` from
    `go.opentelemetry.io/otel/log`).
    ([#&#8203;7002](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7002))
    - Fix `go.opentelemetry.io/otel/exporters/prometheus` to not append a
    suffix if it's already present in metric name.
    ([#&#8203;7088](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7088))
    - Fix the `go.opentelemetry.io/otel/exporters/stdout/stdouttrace`
    self-observability component type and name.
    ([#&#8203;7195](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7195))
    - Fix partial export count metric in
    `go.opentelemetry.io/otel/exporters/stdout/stdouttrace`.
    ([#&#8203;7199](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7199))
    
    ##### Deprecated
    
    - Deprecate `WithoutUnits` and `WithoutCounterSuffixes` options,
    preferring `WithTranslationStrategy` instead.
    ([#&#8203;7111](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7111))
    - Deprecate support for `OTEL_GO_X_CARDINALITY_LIMIT` environment
    variable in `go.opentelemetry.io/otel/sdk/metric`. Use
    `WithCardinalityLimit` option instead.
    ([#&#8203;7166](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7166))
    
    [Go 1.24]: https://go.dev/doc/go1.24
    
    [Go 1.23]: https://go.dev/doc/go1.23
    
    ##### What's Changed
    
    - chore(deps): update golang.org/x/telemetry digest to
    [`96f361d`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/96f361d)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7054](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7054)
    - fix(deps): update googleapis to
    [`a45f3df`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/a45f3df)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7058](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7058)
    - chore(deps): update github/codeql-action action to v3.29.3 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7055](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7055)
    - fix(deps): update module github.com/golangci/golangci-lint/v2 to
    v2.3.0 by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot]
    in
    [#&#8203;7060](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7060)
    - chore(deps): update module github.com/securego/gosec/v2 to v2.22.7 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7059](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7059)
    - chore(deps): update python:3.13.5-slim-bullseye docker digest to
    [`89aa817`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/89aa817)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7061](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7061)
    - chore(deps): update python:3.13.5-slim-bullseye docker digest to
    [`17c88fd`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/17c88fd)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7062](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7062)
    - Fix markdown-fail-fast on push by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7057](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7057)
    - sdk/trace: self-observability: span metrics by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [#&#8203;7027](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7027)
    - chore(deps): update module github.com/ldez/grignotin to v0.10.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7072](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7072)
    - fix(deps): update module google.golang.org/grpc to v1.74.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7073](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7073)
    - chore(deps): update python:3.13.5-slim-bullseye docker digest to
    [`ba65ee6`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/ba65ee6)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7068](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7068)
    - sdk/metric: do not document default cardinality limit by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [#&#8203;7065](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7065)
    - docs: unify doc comments for functions returning bool by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [#&#8203;7064](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7064)
    - fix(deps): update module go.opentelemetry.io/collector/pdata to
    v1.36.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7070](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7070)
    - fix(deps): update github.com/prometheus/otlptranslator digest to
    [`fce6240`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/fce6240)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7075](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7075)
    - fix(deps): update module github.com/cenkalti/backoff/v5 to v5.0.3 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7077](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7077)
    - chore(deps): update github/codeql-action action to v3.29.4 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7076](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7076)
    - Add Flc as an approver by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [#&#8203;7053](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7053)
    - chore(deps): update module go.opentelemetry.io/build-tools to v0.25.0
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7079](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7079)
    - fix(deps): update build-tools to v0.25.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7080](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7080)
    - chore(deps): update python:3.13.5-slim-bullseye docker digest to
    [`846d391`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/846d391)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7078](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7078)
    - chore(deps): update module github.com/bombsimon/wsl/v5 to v5.1.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7082](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7082)
    - chore(deps): update module github.com/daixiang0/gci to v0.13.7 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7085](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7085)
    - fix(deps): update github.com/prometheus/otlptranslator digest to
    [`ab8d56d`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/ab8d56d)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7088](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7088)
    - fix: add mock server URL to .lycheeignore by
    [@&#8203;flc1125](https://redirect.github.com/flc1125) in
    [#&#8203;7090](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7090)
    - chore(deps): update module github.com/sonatard/noctx to v0.4.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7092](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7092)
    - chore(deps): update golang.org/x/telemetry digest to
    [`1581f0a`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/1581f0a)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7096](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7096)
    - fix(deps): update googleapis to
    [`f173205`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/f173205)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7097](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7097)
    - chore(deps): update module github.com/4meepo/tagalign to v1.4.3 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7098](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7098)
    - Modernize by [@&#8203;ash2k](https://redirect.github.com/ash2k) in
    [#&#8203;7089](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7089)
    - Remove notice about internaltest which is not generated anymore by
    [@&#8203;dmathieu](https://redirect.github.com/dmathieu) in
    [#&#8203;7093](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7093)
    - sdk/metric: use runtime.GOMAXPROCS(0) instead of runtime.NumCPU() in
    DefaultExemplarReservoirProviderSelector for the
    FixedSizeReservoirProvider default size by
    [@&#8203;lzakharov](https://redirect.github.com/lzakharov) in
    [#&#8203;7094](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7094)
    - ci: Add use-any linter by
    [@&#8203;flc1125](https://redirect.github.com/flc1125) in
    [#&#8203;7091](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7091)
    - chore: enable gocritic linter by
    [@&#8203;mmorel-35](https://redirect.github.com/mmorel-35) in
    [#&#8203;7095](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7095)
    - chore(deps): update module github.com/sagikazarmark/locafero to
    v0.10.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7100](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7100)
    - chore(deps): update golang.org/x/telemetry digest to
    [`28f32e4`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/28f32e4)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7099](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7099)
    - fix(deps): update module go.opentelemetry.io/collector/pdata to
    v1.37.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7101](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7101)
    - fix(deps): update build-tools to v0.26.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7105](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7105)
    - chore(deps): update github/codeql-action action to v3.29.5 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7103](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7103)
    - Fix names in experimental readmes by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [#&#8203;7106](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7106)
    - fix(deps): update module go.opentelemetry.io/proto/otlp to v1.7.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7108](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7108)
    - fix(deps): update module github.com/prometheus/client\_golang to
    v1.23.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7109](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7109)
    - Add changelog entry for version bump of otlptranslator - suffixes are
    now deduplicated by
    [@&#8203;ArthurSens](https://redirect.github.com/ArthurSens) in
    [#&#8203;7086](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7086)
    - fix(deps): update module github.com/golangci/golangci-lint/v2 to
    v2.3.1 by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot]
    in
    [#&#8203;7118](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7118)
    - chore: enable extra-rules from gofumpt by
    [@&#8203;mmorel-35](https://redirect.github.com/mmorel-35) in
    [#&#8203;7114](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7114)
    - chore(deps): update module github.com/alecthomas/chroma/v2 to v2.20.0
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7125](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7125)
    - fix(deps): update googleapis to
    [`a7a43d2`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/a7a43d2)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7126](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7126)
    - sdk/metric: Apply Cardinality Limits to Aggregations by
    [@&#8203;ysolomchenko](https://redirect.github.com/ysolomchenko) in
    [#&#8203;7081](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7081)
    - chore: enable unused-parameter rule from revive by
    [@&#8203;mmorel-35](https://redirect.github.com/mmorel-35) in
    [#&#8203;7122](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7122)
    - Add support for native histogram exemplars by
    [@&#8203;shivanthzen](https://redirect.github.com/shivanthzen) in
    [#&#8203;6772](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6772)
    - chore(deps): update golang.org/x/telemetry digest to
    [`9469f96`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/9469f96)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7134](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7134)
    - chore(deps): update module github.com/charmbracelet/x/ansi to v0.10.1
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7135](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7135)
    - Testing: Run sync measure benchmarks in parallel by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;7113](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7113)
    - chore(deps): update actions/download-artifact action to v5 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7136](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7136)
    - Add benchmark for map access using attribute Equivalent by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;7123](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7123)
    - Add security insights document to repository by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7129](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7129)
    - sdk/log: self-observability: log created metric by
    [@&#8203;mahendrabishnoi2](https://redirect.github.com/mahendrabishnoi2)
    in
    [#&#8203;7121](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7121)
    - fix(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7138](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7138)
    - chore(deps): update actions/cache action to v4.2.4 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7140](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7140)
    - fix(deps): update module google.golang.org/protobuf to v1.36.7 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7141](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7141)
    - chore(deps): update lycheeverse/lychee-action action to v2.5.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7143](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7143)
    - chore(deps): update github/codeql-action action to v3.29.6 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7144](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7144)
    - chore(deps): update golang.org/x/telemetry digest to
    [`01f7bf4`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/01f7bf4)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7146](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7146)
    - chore(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7147](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7147)
    - chore: enable ptrToRefParam from go-critic by
    [@&#8203;mmorel-35](https://redirect.github.com/mmorel-35) in
    [#&#8203;7131](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7131)
    - chore(deps): update python docker tag to v3.13.6 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7148](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7148)
    - chore(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7149](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7149)
    - chore(deps): update python:3.13.6-slim-bullseye docker digest to
    [`e98b521`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/e98b521)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7151](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7151)
    - chore(deps): update github/codeql-action action to v3.29.7 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7152](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7152)
    - chore(deps): update github/codeql-action action to v3.29.8 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7156](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7156)
    - fix(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7153](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7153)
    - fix(deps): update golang.org/x/exp digest to
    [`a408d31`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/a408d31)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7158](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7158)
    - fix(deps): update module github.com/prometheus/otlptranslator to
    v0.0.1 by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot]
    in
    [#&#8203;7159](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7159)
    - chore: enable unused-receiver rule from revive by
    [@&#8203;mmorel-35](https://redirect.github.com/mmorel-35) in
    [#&#8203;7130](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7130)
    - feat(stdouttrace): add experimental self-observability metrics by
    [@&#8203;flc1125](https://redirect.github.com/flc1125) in
    [#&#8203;7133](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7133)
    - chore(deps): update actions/checkout action to v5 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7168](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7168)
    - sdk/log: Add EventNameProcessor example by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [#&#8203;7128](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7128)
    - chore(deps): update otel/weaver docker tag to v0.17.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7163](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7163)
    - fix(deps): update googleapis to
    [`6b04f9b`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/6b04f9b)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7169](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7169)
    - chore(deps): update module go.opentelemetry.io/build-tools to v0.26.1
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7170](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7170)
    - sdk/trace: self-observability: batch span processor metrics by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;6393](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6393)
    - fix(deps): update build-tools to v0.26.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7171](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7171)
    - Add subscript to issue templates by
    [@&#8203;opentelemetrybot](https://redirect.github.com/opentelemetrybot)
    in
    [#&#8203;7116](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7116)
    - fix(deps): update golang.org/x to
    [`51f8813`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/51f8813)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7173](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7173)
    - Upgrade semconv gen to weaver v0.17.0 by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7172](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7172)
    - sdk/metric: Add Unit Tests for Cardinality Limits by
    [@&#8203;ysolomchenko](https://redirect.github.com/ysolomchenko) in
    [#&#8203;7164](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7164)
    - sdk/metric: Deprecate the `sdk/metric/x` Feature Supporting
    Cardinality Limits by
    [@&#8203;ysolomchenko](https://redirect.github.com/ysolomchenko) in
    [#&#8203;7166](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7166)
    - sdk/metric: package example includes Cardinality Limits by
    [@&#8203;ysolomchenko](https://redirect.github.com/ysolomchenko) in
    [#&#8203;7165](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7165)
    - fix(deps): update module go.opentelemetry.io/collector/pdata to
    v1.38.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7177](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7177)
    - chore(deps): update module go-simpler.org/musttag to v0.14.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7178](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7178)
    - fix(deps): update googleapis to
    [`5f3141c`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/5f3141c)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7176](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7176)
    - chore(deps): update github/codeql-action action to v3.29.9 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7181](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7181)
    - Support Go 1.25 by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7187](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7187)
    - ci(benchmarks): switch runner to Oracle bare metal by
    [@&#8203;tdn21](https://redirect.github.com/tdn21) in
    [#&#8203;7183](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7183)
    - chore(deps): update module github.com/charmbracelet/colorprofile to
    v0.3.2 by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot]
    in
    [#&#8203;7190](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7190)
    - chore(deps): update module go.opentelemetry.io/build-tools to v0.26.2
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7191](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7191)
    - fix(deps): update build-tools to v0.26.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7192](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7192)
    - chore(deps): update otel/weaver docker tag to v0.17.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7207](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7207)
    - Use the context passed to `ExportSpans` for measurements in
    `stdouttrace` by [@&#8203;MrAlias](https://redirect.github.com/MrAlias)
    in
    [#&#8203;7198](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7198)
    - Flatten `stdouttrace` `Exporter.initSelfObservability` into
    `Exporter.New` by [@&#8203;MrAlias](https://redirect.github.com/MrAlias)
    in
    [#&#8203;7197](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7197)
    - Fix component name for stdouttrace by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7195](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7195)
    - Restructure component ID counting in stdouttrace by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7196](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7196)
    - chore(deps): update module go.augendre.info/fatcontext to v0.8.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7213](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7213)
    - sdk/trace: do not defer if not self-observing by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7206](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7206)
    - Flatten `tracer.initSelfObservability` into `TracerProvider.Tracer` by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7205](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7205)
    - Fix minor grammatical error in `sdk/trace/internal/x` README.md by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7211](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7211)
    - Fix minor grammatical error in stdouttrace by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7202](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7202)
    - Fix callbackAttributesOpt variable name by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7210](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7210)
    - Fix minor grammatical error in `Distinct` docs by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7203](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7203)
    - Use `t.Cleanup` instead of `defer` in `stdouttrace` by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7204](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7204)
    - Use `t.Cleanup` instead of `defer` in `sdk/trace` by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7208](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7208)
    - chore(deps): update github/codeql-action action to v3.29.10 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7214](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7214)
    - Handle partial export counts in `stdouttrace` observability by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7199](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7199)
    - Pool attribute slices in `stdouttrace` self-observability by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7201](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7201)
    - fix(deps): update googleapis to
    [`3122310`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/3122310)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7216](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7216)
    - chore(deps): update module github.com/kevinburke/ssh\_config to v1.4.0
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7219](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7219)
    - fix(deps): update module google.golang.org/grpc to v1.75.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7220](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7220)
    - chore(deps): update module github.com/grpc-ecosystem/grpc-gateway/v2
    to v2.27.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7224](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7224)
    - fix(deps): update module google.golang.org/protobuf to v1.36.8 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7225](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7225)
    - chore(deps): update codecov/codecov-action action to v5.5.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7227](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7227)
    - chore(deps): update github/codeql-action action to v3.29.11 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7229](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7229)
    - sdk/trace: More trace id tests by
    [@&#8203;bboreham](https://redirect.github.com/bboreham) in
    [#&#8203;7155](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7155)
    - chore(deps): update github.com/golangci/golines digest to
    [`d4663ad`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/d4663ad)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7238](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7238)
    - chore(deps): update lycheeverse/lychee-action action to v2.6.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7239](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7239)
    - feat(stdouttrace): generate counter implementation via templates by
    [@&#8203;yumosx](https://redirect.github.com/yumosx) in
    [#&#8203;7231](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7231)
    - refactor(logger): Flatten `logger.initSelfObservability` into
    `logger.newLoggerr` and use `t.Cleanup` instead of defer by
    [@&#8203;yumosx](https://redirect.github.com/yumosx) in
    [#&#8203;7228](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7228)
    - fix(deps): update module github.com/stretchr/testify to v1.11.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7242](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7242)
    - chore(deps): update lycheeverse/lychee-action action to v2.6.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7243](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7243)
    - Wrap `Float64ObservableCounter` with `system.CPUTime` by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7235](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7235)
    - Fix CPUModeSystem variable name by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7233](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7233)
    - Return early in semconv generated packages if no attributes passed by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7222](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7222)
    - \[chore] Upgrade semconv pkg use to v1.36.0 by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7237](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7237)
    - fix: correct package import paths by
    [@&#8203;flc1125](https://redirect.github.com/flc1125) in
    [#&#8203;7244](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7244)
    - sdk/metric: Add Documentation for Cardinality Limits by
    [@&#8203;ysolomchenko](https://redirect.github.com/ysolomchenko) in
    [#&#8203;7179](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7179)
    - sdk/log: Deduplicate key-value collections in Record.SetBody by
    [@&#8203;Mojachieee](https://redirect.github.com/Mojachieee) in
    [#&#8203;7002](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7002)
    - fix(deps): update google.golang.org/genproto/googleapis/rpc digest to
    [`c5933d9`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/c5933d9)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7246](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7246)
    - chore(deps): update google.golang.org/genproto/googleapis/api digest
    to
    [`c5933d9`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/c5933d9)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7250](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7250)
    - Add copyright header to generated semconv packages by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7248](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7248)
    - Clarify overflow attribute description in doc.go to indicate it is
    boolean true by
    [@&#8203;cijothomas](https://redirect.github.com/cijothomas) in
    [#&#8203;7247](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7247)
    - trace: optimize id parsing and string functions by
    [@&#8203;jschaf](https://redirect.github.com/jschaf) in
    [#&#8203;6791](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6791)
    - Propagate context to self-observability measurements in `sdk/trace` by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7209](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7209)
    - Amortize measurement option allocations by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7215](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7215)
    - Add `AddSet` and `RecordSet` methods to semconv generated packages by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7223](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7223)
    - chore(deps): update module github.com/ldez/tagliatelle to v0.7.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7253](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7253)
    - chore(deps): update module go.opentelemetry.io/build-tools to v0.27.0
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7257](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7257)
    - chore(deps): update module github.com/gordonklaus/ineffassign to
    v0.2.0 by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot]
    in
    [#&#8203;7259](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7259)
    - Generate the `semconv/v1.37.0` packages by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7254](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7254)
    - prometheus: Add support for setting Translation Strategy config option
    by [@&#8203;ywwg](https://redirect.github.com/ywwg) in
    [#&#8203;7111](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7111)
    - fix(deps): update module github.com/stretchr/testify to v1.11.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7261](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7261)
    - Upgrade semconv dependencies to v1.37.0 by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7260](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7260)
    - Add benchmark for set equality by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;7262](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7262)
    - chore(deps): update module github.com/mgechev/revive to v1.12.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7269](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7269)
    - Refactor BSP observability setup by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7264](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7264)
    - Statically define trace observability attributes by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7263](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7263)
    - Add tests for attribute JSON marshalling by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;7268](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7268)
    - Release v1.38.0 by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7271](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7271)
    
    ##### New Contributors
    
    - [@&#8203;lzakharov](https://redirect.github.com/lzakharov) made their
    first contribution in
    [#&#8203;7094](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7094)
    - [@&#8203;ArthurSens](https://redirect.github.com/ArthurSens) made
    their first contribution in
    [#&#8203;7086](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7086)
    - [@&#8203;shivanthzen](https://redirect.github.com/shivanthzen) made
    their first contribution in
    [#&#8203;6772](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6772)
    -
    [@&#8203;mahendrabishnoi2](https://redirect.github.com/mahendrabishnoi2)
    made their first contribution in
    [#&#8203;7121](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7121)
    - [@&#8203;tdn21](https://redirect.github.com/tdn21) made their first
    contribution in
    [#&#8203;7183](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7183)
    - [@&#8203;cijothomas](https://redirect.github.com/cijothomas) made
    their first contribution in
    [#&#8203;7247](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7247)
    - [@&#8203;ywwg](https://redirect.github.com/ywwg) made their first
    contribution in
    [#&#8203;7111](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7111)
    
    **Full Changelog**:
    <https://github.com/open-telemetry/opentelemetry-go/compare/exporters/prometheus/v0.59.1...v1.38.0>
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0MS45MS4xIiwidXBkYXRlZEluVmVyIjoiNDEuOTEuMSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: otelbot <197425009+otelbot@users.noreply.github.com>
