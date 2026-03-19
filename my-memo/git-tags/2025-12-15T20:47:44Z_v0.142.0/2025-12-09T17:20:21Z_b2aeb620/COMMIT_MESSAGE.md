commit b2aeb620d103c85c9e1bc444b7b784aa384ccab9
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Dec 9 09:20:21 2025 -0800

    fix(deps): update opentelemetry-go monorepo (#14271)
    
    > **Note:** This PR body was truncated due to platform limits.
    
    This PR contains the following updates:
    
    | Package | Change |
    [Age](https://docs.renovatebot.com/merge-confidence/) |
    [Confidence](https://docs.renovatebot.com/merge-confidence/) |
    |---|---|---|---|
    |
    [go.opentelemetry.io/otel](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.38.0` -> `v1.39.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel/v1.39.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel/v1.38.0/v1.39.0?slim=true)
    |
    |
    [go.opentelemetry.io/otel/log](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v0.14.0` -> `v0.15.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2flog/v0.15.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2flog/v0.14.0/v0.15.0?slim=true)
    |
    |
    [go.opentelemetry.io/otel/metric](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.38.0` -> `v1.39.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2fmetric/v1.39.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2fmetric/v1.38.0/v1.39.0?slim=true)
    |
    |
    [go.opentelemetry.io/otel/sdk](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.38.0` -> `v1.39.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2fsdk/v1.39.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2fsdk/v1.38.0/v1.39.0?slim=true)
    |
    |
    [go.opentelemetry.io/otel/sdk/metric](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.38.0` -> `v1.39.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2fsdk%2fmetric/v1.39.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2fsdk%2fmetric/v1.38.0/v1.39.0?slim=true)
    |
    |
    [go.opentelemetry.io/otel/trace](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.38.0` -> `v1.39.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2ftrace/v1.39.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2ftrace/v1.38.0/v1.39.0?slim=true)
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
    [`v1.39.0`](https://redirect.github.com/open-telemetry/opentelemetry-go/releases/tag/v1.39.0)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-go/compare/v1.38.0...v1.39.0)
    
    #### Overview
    
    ##### Added
    
    - Greatly reduce the cost of recording metrics in
    `go.opentelemetry.io/otel/sdk/metric` using hashing for map keys.
    ([#&#8203;7175](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7175))
    - Add `WithInstrumentationAttributeSet` option to
    `go.opentelemetry.io/otel/log`, `go.opentelemetry.io/otel/metric`, and
    `go.opentelemetry.io/otel/trace` packages. This provides a
    concurrent-safe and performant alternative to
    `WithInstrumentationAttributes` by accepting a pre-constructed
    `attribute.Set`.
    ([#&#8203;7287](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7287))
    - Add experimental observability for the Prometheus exporter in
    `go.opentelemetry.io/otel/exporters/prometheus`. Check the
    `go.opentelemetry.io/otel/exporters/prometheus/internal/x` package
    documentation for more information.
    ([#&#8203;7345](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7345))
    - Add experimental observability metrics in
    `go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploggrpc`.
    ([#&#8203;7353](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7353))
    - Add temporality selector functions `DeltaTemporalitySelector`,
    `CumulativeTemporalitySelector`, `LowMemoryTemporalitySelector` to
    `go.opentelemetry.io/otel/sdk/metric`.
    ([#&#8203;7434](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7434))
    - Add experimental observability metrics for simple log processor in
    `go.opentelemetry.io/otel/sdk/log`.
    ([#&#8203;7548](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7548))
    - Add experimental observability metrics in
    `go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc`.
    ([#&#8203;7459](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7459))
    - Add experimental observability metrics in
    `go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp`.
    ([#&#8203;7486](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7486))
    - Add experimental observability metrics for simple span processor in
    `go.opentelemetry.io/otel/sdk/trace`.
    ([#&#8203;7374](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7374))
    - Add experimental observability metrics in
    `go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploghttp`.
    ([#&#8203;7512](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7512))
    - Add experimental observability metrics for manual reader in
    `go.opentelemetry.io/otel/sdk/metric`.
    ([#&#8203;7524](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7524))
    - Add experimental observability metrics for periodic reader in
    `go.opentelemetry.io/otel/sdk/metric`.
    ([#&#8203;7571](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7571))
    - Support `OTEL_EXPORTER_OTLP_LOGS_INSECURE` and
    `OTEL_EXPORTER_OTLP_INSECURE` environmental variables in
    `go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploghttp`.
    ([#&#8203;7608](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7608))
    - Add `Enabled` method to the `Processor` interface in
    `go.opentelemetry.io/otel/sdk/log`. All `Processor` implementations now
    include an `Enabled` method.
    ([#&#8203;7639](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7639))
    - The `go.opentelemetry.io/otel/semconv/v1.38.0` package. The package
    contains semantic conventions from the `v1.38.0` version of the
    OpenTelemetry Semantic Conventions. See the [migration
    documentation](./semconv/v1.38.0/MIGRATION.md) for information on how to
    upgrade from
    `go.opentelemetry.io/otel/semconv/v1.37.0.`([#&#8203;7648](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7648))
    
    ##### Changed
    
    - `Distinct` in `go.opentelemetry.io/otel/attribute` is no longer
    guaranteed to uniquely identify an attribute set. Collisions between
    `Distinct` values for different Sets are possible with extremely high
    cardinality (billions of series per instrument), but are highly
    unlikely.
    ([#&#8203;7175](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7175))
    - `WithInstrumentationAttributes` in `go.opentelemetry.io/otel/trace`
    synchronously de-duplicates the passed attributes instead of delegating
    it to the returned `TracerOption`.
    ([#&#8203;7266](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7266))
    - `WithInstrumentationAttributes` in `go.opentelemetry.io/otel/meter`
    synchronously de-duplicates the passed attributes instead of delegating
    it to the returned `MeterOption`.
    ([#&#8203;7266](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7266))
    - `WithInstrumentationAttributes` in `go.opentelemetry.io/otel/log`
    synchronously de-duplicates the passed attributes instead of delegating
    it to the returned `LoggerOption`.
    ([#&#8203;7266](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7266))
    - Rename the `OTEL_GO_X_SELF_OBSERVABILITY` environment variable to
    `OTEL_GO_X_OBSERVABILITY` in `go.opentelemetry.io/otel/sdk/trace`,
    `go.opentelemetry.io/otel/sdk/log`, and
    `go.opentelemetry.io/otel/exporters/stdout/stdouttrace`.
    ([#&#8203;7302](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7302))
    - Improve performance of histogram `Record` in
    `go.opentelemetry.io/otel/sdk/metric` when min and max are disabled
    using `NoMinMax`.
    ([#&#8203;7306](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7306))
    - Improve error handling for dropped data during translation by using
    `prometheus.NewInvalidMetric` in
    `go.opentelemetry.io/otel/exporters/prometheus`. ⚠️ **Breaking Change:**
    Previously, these cases were only logged and scrapes succeeded. Now,
    when translation would drop data (e.g., invalid label/value), the
    exporter emits a `NewInvalidMetric`, and Prometheus scrapes **fail with
    HTTP 500** by default. To preserve the prior behavior (scrapes succeed
    while errors are logged), configure your Prometheus HTTP handler with:
    `promhttp.HandlerOpts{ ErrorHandling: promhttp.ContinueOnError }`.
    ([#&#8203;7363](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7363))
    - Replace fnv hash with xxhash in `go.opentelemetry.io/otel/attribute`
    for better performance.
    ([#&#8203;7371](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7371))
    - The default `TranslationStrategy` in
    `go.opentelemetry.io/exporters/prometheus` is changed from
    `otlptranslator.NoUTF8EscapingWithSuffixes` to
    `otlptranslator.UnderscoreEscapingWithSuffixes`.
    ([#&#8203;7421](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7421))
    - Improve performance of concurrent measurements in
    `go.opentelemetry.io/otel/sdk/metric`.
    ([#&#8203;7427](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7427))
    - Include W3C TraceFlags (bits 0–7) in the OTLP `Span.Flags` field in
    `go.opentelemetry.io/exporters/otlp/otlptrace/otlptracehttp` and
    `go.opentelemetry.io/exporters/otlp/otlptrace/otlptracegrpc`.
    ([#&#8203;7438](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7438))
    - The `ErrorType` function in `go.opentelemetry.io/otel/semconv/v1.37.0`
    now handles custom error types.
    If an error implements an `ErrorType() string` method, the return value
    of that method will be used as the error type.
    ([#&#8203;7442](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7442))
    
    ##### Fixed
    
    - Fix `WithInstrumentationAttributes` options in
    `go.opentelemetry.io/otel/trace`, `go.opentelemetry.io/otel/metric`, and
    `go.opentelemetry.io/otel/log` to properly merge attributes when passed
    multiple times instead of replacing them. Attributes with duplicate keys
    will use the last value passed.
    ([#&#8203;7300](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7300))
    - The equality of `attribute.Set` when using the `Equal` method is not
    affected by the user overriding the empty set pointed to by
    `attribute.EmptySet` in `go.opentelemetry.io/otel/attribute`.
    ([#&#8203;7357](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7357))
    - Return partial OTLP export errors to the caller in
    `go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploggrpc`.
    ([#&#8203;7372](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7372))
    - Return partial OTLP export errors to the caller in
    `go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploghttp`.
    ([#&#8203;7372](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7372))
    - Return partial OTLP export errors to the caller in
    `go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetricgrpc`.
    ([#&#8203;7372](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7372))
    - Return partial OTLP export errors to the caller in
    `go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetrichttp`.
    ([#&#8203;7372](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7372))
    - Return partial OTLP export errors to the caller in
    `go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc`.
    ([#&#8203;7372](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7372))
    - Return partial OTLP export errors to the caller in
    `go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp`.
    ([#&#8203;7372](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7372))
    - Fix `AddAttributes`, `SetAttributes`, `SetBody` on `Record` in
    `go.opentelemetry.io/otel/sdk/log` to not mutate input.
    ([#&#8203;7403](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7403))
    - Do not double record measurements of `RecordSet` methods in
    `go.opentelemetry.io/otel/semconv/v1.37.0`.
    ([#&#8203;7655](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7655))
    - Do not double record measurements of `RecordSet` methods in
    `go.opentelemetry.io/otel/semconv/v1.36.0`.
    ([#&#8203;7656](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7656))
    
    ##### Removed
    
    - Drop support for \[Go 1.23].
    ([#&#8203;7274](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7274))
    - Remove the `FilterProcessor` interface in
    `go.opentelemetry.io/otel/sdk/log`. The `Enabled` method has been added
    to the `Processor` interface instead. All `Processor` implementations
    must now implement the `Enabled` method. Custom processors that do not
    filter records can implement `Enabled` to return `true`.
    ([#&#8203;7639](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7639))
    
    #### What's Changed
    
    - Drop support for Go 1.23 by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7274](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7274)
    - fix(deps): update module go.opentelemetry.io/collector/pdata to
    v1.40.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7275](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7275)
    - chore(deps): update module github.com/securego/gosec/v2 to v2.22.8 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7276](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7276)
    - fix(deps): update module github.com/golangci/golangci-lint/v2 to
    v2.4.0 by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot]
    in
    [#&#8203;7277](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7277)
    - fix(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7188](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7188)
    - fix(deps): update module github.com/opentracing-contrib/go-grpc to
    v0.1.2 by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot]
    in
    [#&#8203;7281](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7281)
    - fix(deps): update googleapis to
    [`ef028d9`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/ef028d9)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7279](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7279)
    - chore(deps): update module github.com/rogpeppe/go-internal to v1.14.1
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7283](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7283)
    - chore(deps): update module github.com/spf13/pflag to v1.0.9 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7282](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7282)
    - fix(deps): update github.com/opentracing-contrib/go-grpc/test digest
    to
    [`0261db7`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/0261db7)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7278](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7278)
    - Fix missing link in changelog by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7273](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7273)
    - chore(deps): update module github.com/spf13/cobra to v1.10.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7285](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7285)
    - chore(deps): update github/codeql-action action to v3.30.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7284](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7284)
    - chore(deps): update module github.com/spf13/cobra to v1.10.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7286](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7286)
    - Add tracetest example for testing instrumentation by
    [@&#8203;adity1raut](https://redirect.github.com/adity1raut) in
    [#&#8203;7107](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7107)
    - Fix schema urls by
    [@&#8203;dmathieu](https://redirect.github.com/dmathieu) in
    [#&#8203;7288](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7288)
    - chore(deps): update module github.com/spf13/pflag to v1.0.10 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7291](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7291)
    - chore(deps): update benchmark-action/github-action-benchmark action to
    v1.20.5 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7293](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7293)
    - chore(deps): update module github.com/ghostiam/protogetter to v0.3.16
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7289](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7289)
    - chore(deps): update module github.com/golangci/go-printf-func-name to
    v0.1.1 by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot]
    in
    [#&#8203;7290](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7290)
    - chore(deps): update module mvdan.cc/gofumpt to v0.9.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7292](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7292)
    - fix(deps): update module go.opentelemetry.io/proto/otlp to v1.8.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7296](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7296)
    - chore(deps): update actions/stale action to v10 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7299](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7299)
    - chore(deps): update actions/setup-go action to v6 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7298](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7298)
    - fix(deps): update module github.com/prometheus/client\_golang to
    v1.23.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7304](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7304)
    - chore(deps): update codecov/codecov-action action to v5.5.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7303](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7303)
    - Add Observability section to CONTRIBUTING doc by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7272](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7272)
    - chore(deps): update module github.com/bombsimon/wsl/v5 to v5.2.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7309](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7309)
    - chore(deps): update golang.org/x/telemetry digest to
    [`9b996f7`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/9b996f7)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7308](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7308)
    - chore(deps): update github/codeql-action action to v3.30.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7312](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7312)
    - chore(deps): update github.com/grafana/regexp digest to
    [`f7b3be9`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/f7b3be9)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7311](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7311)
    - chore(deps): update module github.com/pjbgf/sha1cd to v0.5.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7317](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7317)
    - chore(deps): update golang.org/x/telemetry digest to
    [`af835b0`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/af835b0)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7313](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7313)
    - fix(deps): update module github.com/prometheus/client\_golang to
    v1.23.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7314](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7314)
    - chore(deps): update benchmark-action/github-action-benchmark action to
    v1.20.7 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7319](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7319)
    - Don't track min and max when disabled by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;7306](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7306)
    - fix(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7320](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7320)
    - Add benchmark for exponential histogram measurements by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;7305](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7305)
    - chore(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7324](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7324)
    - chore(deps): update module mvdan.cc/gofumpt to v0.9.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7322](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7322)
    - trace,metric,log: WithInstrumentationAttributes options to merge
    attributes by [@&#8203;pellared](https://redirect.github.com/pellared)
    in
    [#&#8203;7300](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7300)
    - Encapsulate observability in Logs SDK by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7315](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7315)
    - trace,metric,log: add WithInstrumentationAttributeSet option by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [#&#8203;7287](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7287)
    - chore(deps): update module github.com/spf13/afero to v1.15.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7330](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7330)
    - chore(deps): update module github.com/sagikazarmark/locafero to
    v0.11.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7329](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7329)
    - chore(deps): update module github.com/lucasb-eyer/go-colorful to
    v1.3.0 by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot]
    in
    [#&#8203;7327](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7327)
    - chore(deps): update module github.com/antonboom/errname to v1.1.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7338](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7338)
    - fix(deps): update module go.opentelemetry.io/collector/pdata to
    v1.41.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7337](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7337)
    - chore(deps): update module github.com/spf13/viper to v1.21.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7334](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7334)
    - chore(deps): update module github.com/spf13/cast to v1.10.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7333](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7333)
    - fix(deps): update googleapis to
    [`9702482`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/9702482)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7335](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7335)
    - chore(deps): update github/codeql-action action to v3.30.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7339](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7339)
    - chore(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7326](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7326)
    - fix(deps): update module google.golang.org/protobuf to v1.36.9 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7340](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7340)
    - Encapsulate `stdouttrace.Exporter` instrumentation in internal package
    by [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7307](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7307)
    - Do not allocate instrument options if possible in generated semconv
    packages by [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7328](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7328)
    - chore(deps): update module github.com/antonboom/nilnil to v1.1.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7343](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7343)
    - chore(deps): update module golang.org/x/net to v0.44.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7341](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7341)
    - fix(deps): update module golang.org/x/tools to v0.37.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7347](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7347)
    - fix(deps): update module google.golang.org/grpc to v1.75.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7344](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7344)
    - chore(deps): update module go.yaml.in/yaml/v2 to v2.4.3 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7349](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7349)
    - chore(deps): update github/codeql-action action to v3.30.3 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7348](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7348)
    - Rename Self-Observability as just Observability by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7302](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7302)
    - fix(deps): update golang.org/x to
    [`df92998`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/df92998)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7350](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7350)
    - trace,metric,log: change WithInstrumentationAttributes to not
    de-depuplicate the passed attributes in a closure by
    [@&#8203;axw](https://redirect.github.com/axw) in
    [#&#8203;7266](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7266)
    - sdk/metric: add example for metricdatatest package by
    [@&#8203;sanojsubran](https://redirect.github.com/sanojsubran) in
    [#&#8203;7323](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7323)
    - chore(deps): update module github.com/antonboom/testifylint to v1.6.4
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7359](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7359)
    - chore(deps): update module github.com/nunnatsa/ginkgolinter to v0.21.0
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7362](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7362)
    - chore(deps): update module github.com/tetafro/godot to v1.5.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7360](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7360)
    - Do not use the user-defined empty set when comparing sets. by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7357](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7357)
    - Track context containing span in `recordingSpan` by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7354](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7354)
    - fix(deps): update module go.opentelemetry.io/auto/sdk to v1.2.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7365](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7365)
    - Encapsulate SDK BatchSpanProcessor observability by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7332](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7332)
    - Encapsulate SDK Tracer observability by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7331](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7331)
    - chore: generate feature flag files from shared by
    [@&#8203;flc1125](https://redirect.github.com/flc1125) in
    [#&#8203;7361](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7361)
    - fix(deps): update module github.com/prometheus/otlptranslator to v1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7358](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7358)
    - chore(deps): update module github.com/djarvur/go-err113 to v0.1.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7368](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7368)
    - Fix the typo in the function name `TestNewInstrumentation` by
    [@&#8203;yumosx](https://redirect.github.com/yumosx) in
    [#&#8203;7369](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7369)
    - Use Set hash in Distinct (2nd attempt) by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;7175](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7175)
    - chore(deps): update module github.com/ldez/grignotin to v0.10.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7373](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7373)
    - chore(deps): update module github.com/kulti/thelper to v0.7.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7376](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7376)
    - chore(deps): update otel/weaver docker tag to v0.18.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7377](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7377)
    - fix(deps): update github.com/opentracing-contrib/go-grpc/test digest
    to
    [`a6e64aa`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/a6e64aa)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7375](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7375)
    - feat(prometheus): Add observability for prometheus exporter by
    [@&#8203;tongoss](https://redirect.github.com/tongoss) in
    [#&#8203;7345](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7345)
    - Return partial OTLP export errors to the caller by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7372](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7372)
    - sdk/log: add TestRecordMethodsInputConcurrentSafe by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [#&#8203;7378](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7378)
    - chore(deps): update module github.com/sagikazarmark/locafero to
    v0.12.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7390](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7390)
    - chore(deps): update module github.com/tetafro/godot to v1.5.4 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7391](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7391)
    - fix(deps): update module github.com/golangci/golangci-lint/v2 to
    v2.5.0 by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot]
    in
    [#&#8203;7392](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7392)
    - chore: sdk/log/internal/x - generate x package from x component
    template by
    [@&#8203;nikhilmantri0902](https://redirect.github.com/nikhilmantri0902)
    in
    [#&#8203;7389](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7389)
    - chore(deps): update module go.opentelemetry.io/build-tools to v0.28.0
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7394](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7394)
    - fix(deps): update build-tools to v0.28.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7395](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7395)
    - fix(deps): update googleapis to
    [`9219d12`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/9219d12)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7393](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7393)
    - fix(deps): update module go.opentelemetry.io/collector/pdata to
    v1.42.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7397](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7397)
    - refactor: replace `context.Background()` with
    `t.Context()`/`b.Context()` in tests by
    [@&#8203;flc1125](https://redirect.github.com/flc1125) in
    [#&#8203;7352](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7352)
    - sdk/log: BenchmarkAddAttributes, BenchmarkSetAttributes,
    BenchmarkSetBody by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [#&#8203;7387](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7387)
    - Link checker: ignore https localhost uris by
    [@&#8203;dmathieu](https://redirect.github.com/dmathieu) in
    [#&#8203;7399](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7399)
    - chore(deps): update module github.com/ldez/gomoddirectives to v0.7.1
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7400](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7400)
    - chore(deps): update module dev.gaijin.team/go/golib to v0.7.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7402](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7402)
    - Add experimental `x` package to `otlptracegrpc` by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7401](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7401)
    - chore(deps): update actions/cache action to v4.3.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7409](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7409)
    - \[chore]: Clean-up unused obsScopeName const by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7408](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7408)
    - Add benchmark for synchronous gauge measurement by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;7407](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7407)
    - Add measure benchmarks with exemplars recorded by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;7406](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7406)
    - chore(deps): update github/codeql-action action to v3.30.4 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7414](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7414)
    - chore(deps): update module github.com/quasilyte/go-ruleguard to v0.4.5
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7416](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7416)
    - chore(deps): update module github.com/quasilyte/go-ruleguard/dsl to
    v0.3.23 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7417](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7417)
    - Optimize the return type of ExportSpans by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7405](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7405)
    - Optimize Observability return types in in Prometheus exporter by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7410](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7410)
    - chore(deps): update module github.com/mattn/go-runewidth to v0.0.17 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7418](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7418)
    - chore(deps): update module github.com/cyphar/filepath-securejoin to
    v0.5.0 by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot]
    in
    [#&#8203;7419](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7419)
    - Add concurrent safe tests for metric aggregations by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;7379](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7379)
    - chore(deps): update github/codeql-action action to v3.30.5 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7425](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7425)
    - sdk/trace/internal/x: generate x package from x component template
    [#&#8203;7385](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7385)
    by [@&#8203;ternua8](https://redirect.github.com/ternua8) in
    [#&#8203;7411](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7411)
    - chore(deps): update module go.augendre.info/fatcontext to v0.9.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7426](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7426)
    - Generate gRPC Client target parsing func by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7424](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7424)
    - chore(deps): update module github.com/mattn/go-runewidth to v0.0.19 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7428](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7428)
    - Prometheus exporter: change default translation strategy by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;7421](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7421)
    - Only enforce cardinality limits when the attribute set does not
    already exist by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;7422](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7422)
    - fix(deps): update googleapis to
    [`57b25ae`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/57b25ae)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7429](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7429)
    - chore(deps): update module github.com/charmbracelet/x/ansi to v0.10.2
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7432](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7432)
    - chore(deps): update golang.org/x/telemetry digest to
    [`8e64475`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/8e64475)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7431](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7431)
    - chore(deps): update ossf/scorecard-action action to v2.4.3 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7435](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7435)
    - Allow optimizing locking for built-in exemplar reservoirs by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;7423](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7423)
    - chore(deps): update golang.org/x/telemetry digest to
    [`4eae98a`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/4eae98a)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7439](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7439)
    - chore(deps): update peter-evans/create-issue-from-file action to v6 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7440](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7440)
    - Add temporality selector functions by
    [@&#8203;dprotaso](https://redirect.github.com/dprotaso) in
    [#&#8203;7434](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7434)
    - fix(deps): update module google.golang.org/protobuf to v1.36.10 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7445](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7445)
    - chore(deps): update github/codeql-action action to v3.30.6 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7446](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7446)
    - Skip link checking for acm.org which blocks the link checker by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;7444](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7444)
    - feat: logs SDK observability - otlploggrpc exporter metrics by
    [@&#8203;yumosx](https://redirect.github.com/yumosx) in
    [#&#8203;7353](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7353)
    - fix(deps): update golang.org/x to
    [`27f1f14`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/27f1f14)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7448](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7448)
    - fix(deps): update googleapis to
    [`7c0ddcb`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/7c0ddcb)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7449](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7449)
    - chore(deps): update module github.com/grpc-ecosystem/grpc-gateway/v2
    to v2.27.3 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7450](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7450)
    - Add exemplar reservoir parallel benchmarks by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;7441](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7441)
    - chore(deps): update module github.com/ghostiam/protogetter to v0.3.17
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7451](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7451)
    - chore(deps): update actions/stale action to v10.1.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7452](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7452)
    - Support custom error type semantics by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7442](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7442)
    - fix(deps): update build-tools to v0.28.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7455](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7455)
    - chore(deps): update module github.com/go-git/go-git/v5 to v5.16.3 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7456](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7456)
    - chore(deps): update module github.com/bombsimon/wsl/v5 to v5.3.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7457](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7457)
    - sdk/trace: trace id high 64 bit tests by
    [@&#8203;mahendrabishnoi2](https://redirect.github.com/mahendrabishnoi2)
    in
    [#&#8203;7212](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7212)
    - Add the `internal/observ` package to `otlptracegrpc` by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7404](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7404)
    - fix(deps): update googleapis to
    [`65f7160`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/65f7160)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7460](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7460)
    - chore(deps): update module go.opentelemetry.io/collector/featuregate
    to v1.43.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7461](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7461)
    - fix(deps): update module google.golang.org/grpc to v1.76.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7463](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7463)
    - fix(deps): update module go.opentelemetry.io/collector/pdata to
    v1.43.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7462](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7462)
    - Use sync.Map and atomics to improve sum performance by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;7427](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7427)
    - chore(deps): update module github.com/stretchr/objx to v0.5.3 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7464](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7464)
    - chore(deps): update module github.com/prometheus/common to v0.67.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7465](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7465)
    - Document the ordering guarantees provided by the metrics SDK by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [#&#8203;7453](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7453)
    - chore(deps): update github/codeql-action action to v3.30.7 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7467](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7467)
    - chore(deps): update google.golang.org/genproto/googleapis/api digest
    to
    [`49b9836`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/49b9836)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7468](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7468)
    - Instrument the `otlptracegrpc` exporter by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7459](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7459)
    - fix(deps): update google.golang.org/genproto/googleapis/rpc digest to
    [`49b9836`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/49b9836)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7469](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7469)
    - chore(deps): update module golang.org/x/net to v0.45.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7470](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7470)
    - chore(deps): update github/codeql-action action to v4 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7472](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7472)
    - chore(deps): update module github.com/skeema/knownhosts to v1.3.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7471](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7471)
    - fix(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7475](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7475)
    - chore(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7477](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7477)
    - chore(deps): update module github.com/nunnatsa/ginkgolinter to v0.21.2
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7481](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7481)
    - chore(deps): update module github.com/ldez/exptostd to v0.4.5 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7483](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7483)
    - Add the internal `x` package to `otlptracehttp` by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7476](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7476)
    - Add a version const to otlptracehttp by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7479](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7479)
    - feat: Improve error handling in prometheus exporter by
    [@&#8203;tongoss](https://redirect.github.com/tongoss) in
    [#&#8203;7363](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7363)
    - Add the `internal/observ` pkg to `otlptracehttp` by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7480](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7480)
    - Move sdk/internal/env to sdk/trace/internal/env by
    [@&#8203;dmathieu](https://redirect.github.com/dmathieu) in
    [#&#8203;7437](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7437)
    - chore(deps): update module github.com/gofrs/flock to v0.13.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7487](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7487)
    - Instrument the `otlptracehttp` exporter by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [#&#8203;7486](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7486)
    - chore(deps): update github/codeql-action action to v4.30.8 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7489](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7489)
    - chore(deps): update module github.com/catenacyber/perfsprint to
    v0.10.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7496](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7496)
    - OTLP trace exporter include W3C trace flags (bits 0–7) in Span.Flags
    by
    [@&#8203;nikhilmantri0902](https://redirect.github.com/nikhilmantri0902)
    in
    [#&#8203;7438](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7438)
    - Fix typos and linguistic errors in documentation / hacktoberfest by
    [@&#8203;survivant](https://redirect.github.com/survivant) in
    [#&#8203;7494](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7494)
    - chore(deps): update module github.com/kunwardeep/paralleltest to
    v1.0.15 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7501](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7501)
    - RELEASING - Remove demo-accounting service from dependency list by
    [@&#8203;Kielek](https://redirect.github.com/Kielek) in
    [#&#8203;7503](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7503)
    - Added the `internal/observ` package to otlploghttp by
    [@&#8203;yumosx](https://redirect.github.com/yumosx) in
    [#&#8203;7484](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7484)
    - fix(deps): update googleapis to
    [`4626949`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/4626949)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7506](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7506)
    - chore(deps): update module github.com/godoc-lint/godoc-lint to v0.10.1
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7508](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7508)
    - fix(observ): correct rejected items and update comment style by
    [@&#8203;yumosx](https://redirect.github.com/yumosx) in
    [#&#8203;7502](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7502)
    - chore(deps): update module github.com/go-critic/go-critic to v0.14.0
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7509](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7509)
    - Prometheus exporter tests: iterate through all scopes rather than
    looking only at the first by
    [@&#8203;tongoss](https://redirect.github.com/tongoss) in
    [#&#8203;7510](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7510)
    - chore: sdk/internal/x - generate x package from shared template by
    [@&#8203;nikhilmantri0902](https://redirect.github.com/nikhilmantri0902)
    in
    [#&#8203;7495](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7495)
    - sdk/log: Fix AddAttributes, SetAttributes, SetBody on Record to not
    mutate input by [@&#8203;pellared](https://redirect.github.com/pellared)
    in
    [#&#8203;7403](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7403)
    - chore(deps): update github/codeql-action action to v4.30.9 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7515](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7515)
    - feat: sdk/trace: span processed metric for simple span processor by
    [@&#8203;mahendrabishnoi2](https://redirect.github.com/mahendrabishnoi2)
    in
    [#&#8203;7374](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7374)
    - Simulate failures for histogram creation paths without risking a
    nil-interface panic by
    [@&#8203;tongoss](https://redirect.github.com/tongoss) in
    [#&#8203;7518](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7518)
    - fix(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7482](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7482)
    - fix(deps): update googleapis to
    [`88f65dc`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/88f65dc)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7521](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7521)
    - chore(deps): update module go.opentelemetry.io/collector/featuregate
    to v1.44.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7522](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7522)
    - fix(deps): update module go.opentelemetry.io/collector/pdata to
    v1.44.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7523](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7523)
    - chore(deps): update module github.com/abirdcfly/dupword to v0.1.7 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7525](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7525)
    - Instrument the `otlploghttp` exporter by
    [@&#8203;yumosx](https://redirect.github.com/yumosx) in
    [#&#8203;7512](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7512)
    - chore(deps): update module mvdan.cc/gofumpt to v0.9.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7527](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7527)
    - Move scorpionknifes to emeritus by
    [@&#8203;dmathieu](https://redirect.github.com/dmathieu) in
    [#&#8203;7526](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7526)
    - chore(deps): update module github.com/prometheus/procfs to v0.18.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7530](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7530)
    - fix(deps): update googleapis to
    [`3a174f9`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/3a174f9)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203;7529](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/7529)
    - chore(deps): update golang.org/x/telemetry digest to
    [`5be28d7`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/5be28d7)
    by [@&#8203;renovate](https://redirect.github.com/renovate)\[bot] in
    [#&#8203
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0Mi4zMi4yIiwidXBkYXRlZEluVmVyIjoiNDIuMzIuMiIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: otelbot <197425009+otelbot@users.noreply.github.com>
