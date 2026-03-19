commit ff45206a3a52d32f44e759708574658fc0b10723
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Mon Mar 31 20:38:14 2025 -0700

    Update opentelemetry-go monorepo to v1.35.0 (#12782)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [go.opentelemetry.io/otel/sdk](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.34.0` -> `v1.35.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2fsdk/v1.35.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fotel%2fsdk/v1.35.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fotel%2fsdk/v1.34.0/v1.35.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2fsdk/v1.34.0/v1.35.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/otel/sdk/metric](https://redirect.github.com/open-telemetry/opentelemetry-go)
    | `v1.34.0` -> `v1.35.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fotel%2fsdk%2fmetric/v1.35.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fotel%2fsdk%2fmetric/v1.35.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fotel%2fsdk%2fmetric/v1.34.0/v1.35.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fotel%2fsdk%2fmetric/v1.34.0/v1.35.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v1.35.0`](https://redirect.github.com/open-telemetry/opentelemetry-go/releases/tag/v1.35.0):
    /v0.57.0/v0.11.0
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-go/compare/v1.34.0...v1.35.0)
    
    ##### Overview
    
    This release is the last to support [Go 1.22].
    The next release will require at least [Go 1.23].
    
    ##### Added
    
    - Add `ValueFromAttribute` and `KeyValueFromAttribute` in
    `go.opentelemetry.io/otel/log`.
    ([#&#8203;6180](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6180))
    - Add `EventName` and `SetEventName` to `Record` in
    `go.opentelemetry.io/otel/log`.
    ([#&#8203;6187](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6187))
    - Add `EventName` to `RecordFactory` in
    `go.opentelemetry.io/otel/log/logtest`.
    ([#&#8203;6187](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6187))
    - `AssertRecordEqual` in `go.opentelemetry.io/otel/log/logtest` checks
    `Record.EventName`.
    ([#&#8203;6187](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6187))
    - Add `EventName` and `SetEventName` to `Record` in
    `go.opentelemetry.io/otel/sdk/log`.
    ([#&#8203;6193](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6193))
    - Add `EventName` to `RecordFactory` in
    `go.opentelemetry.io/otel/sdk/log/logtest`.
    ([#&#8203;6193](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6193))
    - Emit `Record.EventName` field in
    `go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploggrpc`.
    ([#&#8203;6211](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6211))
    - Emit `Record.EventName` field in
    `go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploghttp`.
    ([#&#8203;6211](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6211))
    - Emit `Record.EventName` field in
    `go.opentelemetry.io/otel/exporters/stdout/stdoutlog`
    ([#&#8203;6210](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6210))
    -   The `go.opentelemetry.io/otel/semconv/v1.28.0` package.
    The package contains semantic conventions from the `v1.28.0` version of
    the OpenTelemetry Semantic Conventions.
    See the [migration documentation](./semconv/v1.28.0/MIGRATION.md) for
    information on how to upgrade from
    `go.opentelemetry.io/otel/semconv/v1.27.0`([#&#8203;6236](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6236))
    -   The `go.opentelemetry.io/otel/semconv/v1.30.0` package.
    The package contains semantic conventions from the `v1.30.0` version of
    the OpenTelemetry Semantic Conventions.
    See the [migration documentation](./semconv/v1.30.0/MIGRATION.md) for
    information on how to upgrade from
    `go.opentelemetry.io/otel/semconv/v1.28.0`([#&#8203;6240](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6240))
    -   Document the pitfalls of using `Resource` as a comparable type.
    `Resource.Equal` and `Resource.Equivalent` should be used instead.
    ([#&#8203;6272](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6272))
    - Support \[Go 1.24].
    ([#&#8203;6304](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6304))
    - Add `FilterProcessor` and `EnabledParameters` in
    `go.opentelemetry.io/otel/sdk/log`.
    It replaces
    `go.opentelemetry.io/otel/sdk/log/internal/x.FilterProcessor`.
    Compared to previous version it additionally gives the possibility to
    filter by resource and instrumentation scope.
    ([#&#8203;6317](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6317))
    
    ##### Changed
    
    - Update `github.com/prometheus/common` to `v0.62.0`, which changes the
    `NameValidationScheme` to `NoEscaping`.
    This allows metrics names to keep original delimiters (e.g. `.`), rather
    than replacing with underscores.
    This is controlled by the `Content-Type` header, or can be reverted by
    setting `NameValidationScheme` to `LegacyValidation` in
    `github.com/prometheus/common/model`.
    ([#&#8203;6198](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6198))
    
    ##### Fixes
    
    - Eliminate goroutine leak for the processor returned by
    `NewSimpleSpanProcessor` in `go.opentelemetry.io/otel/sdk/trace` when
    `Shutdown` is called and the passed `ctx` is canceled and
    `SpanExporter.Shutdown` has not returned.
    ([#&#8203;6368](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6368))
    - Eliminate goroutine leak for the processor returned by
    `NewBatchSpanProcessor` in `go.opentelemetry.io/otel/sdk/trace` when
    `ForceFlush` is called and the passed `ctx` is canceled and
    `SpanExporter.Export` has not returned.
    ([#&#8203;6369](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/6369))
    
    [Go 1.23]: https://go.dev/doc/go1.23
    
    [Go 1.22]: https://go.dev/doc/go1.22
    
    ##### What's Changed
    
    - chore(deps): update golang.org/x/telemetry digest to
    [`04cd7ba`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/04cd7ba)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6176](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6176)
    - chore(deps): update module github.com/grpc-ecosystem/grpc-gateway/v2
    to v2.26.0 by [@&#8203;renovate](https://redirect.github.com/renovate)
    in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6186](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6186)
    - chore(deps): update module github.com/pjbgf/sha1cd to v0.3.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6188](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6188)
    - chore(deps): update dependency codespell to v2.4.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6189](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6189)
    - log: Add ValueFromAttribute and KeyValueFromAttribute by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6180](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6180)
    - fix(deps): update module github.com/opentracing-contrib/go-grpc to
    v0.1.1 by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6191](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6191)
    - fix(deps): update github.com/opentracing-contrib/go-grpc/test digest
    to
    [`2f9c7e3`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/2f9c7e3)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6190](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6190)
    - log: Add EventName by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6187](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6187)
    - sdk/log: Add EventName by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6193](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6193)
    - chore(deps): update codecov/codecov-action action to v5.2.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6195](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6195)
    - fix(deps): update googleapis to
    [`138b5a5`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/138b5a5)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6194](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6194)
    - fix(deps): update module go.opentelemetry.io/build-tools/crosslink to
    v0.17.0 by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6197](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6197)
    - fix(deps): update module go.opentelemetry.io/build-tools/gotmpl to
    v0.17.0 by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6199](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6199)
    - fix(deps): update module go.opentelemetry.io/build-tools/semconvgen to
    v0.17.0 by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6202](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6202)
    - fix(deps): update module go.opentelemetry.io/build-tools/multimod to
    v0.17.0 by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6200](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6200)
    - chore: Group renovate build-tools updates by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6201](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6201)
    - Update module github.com/prometheus/common to v0.62.0 and fix tests by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6198](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6198)
    - chore(deps): update module github.com/go-git/go-git/v5 to v5.13.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6204](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6204)
    - chore(deps): update codecov/codecov-action action to v5.3.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6207](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6207)
    - fix(deps): update module google.golang.org/grpc to v1.70.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6208](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6208)
    - fix(deps): update googleapis to
    [`65684f5`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/65684f5)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6212](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6212)
    - chore(deps): update codecov/codecov-action action to v5.3.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6213](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6213)
    - fix(deps): update module google.golang.org/protobuf to v1.36.4 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6214](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6214)
    - otlplog: Emit Record.EventName field by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6211](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6211)
    - chore: Update Logs API design doc by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6206](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6206)
    - fix(deps): update googleapis to
    [`29210b9`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/29210b9)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6217](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6217)
    - chore(deps): update module github.com/cyphar/filepath-securejoin to
    v0.4.1 by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6218](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6218)
    - fix(deps): update golang.org/x to
    [`e0ece0d`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/e0ece0d)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6219](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6219)
    - chore(deps): update dependency codespell to v2.4.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6221](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6221)
    - fix(deps): update golang.org/x to
    [`e0ece0d`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/e0ece0d)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6222](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6222)
    - stdoutlog: Emit Record.EventName field by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6210](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6210)
    - Update codespell target by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6223](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6223)
    - chore(deps): update module github.com/spf13/pflag to v1.0.6 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6224](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6224)
    - chore(deps): update module github.com/skeema/knownhosts to v1.3.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6231](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6231)
    - Weaver by [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/5898](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/5898)
    - chore(deps): update module github.com/polyfloyd/go-errorlint to v1.7.1
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6237](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6237)
    - Generate the `semconv/v1.28.0` package by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6236](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6236)
    - Use archive URL for weaver registry by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6235](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6235)
    - sdk/log: Assign fltrProcessors on provider creation instead of lazy by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6239](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6239)
    - Generate `semconv/v1.30.0` by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6240](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6240)
    - Add an auto-instrumentable no-op implementation to the `trace` package
    by [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6203](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6203)
    - fix(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6249](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6249)
    - chore(deps): update google.golang.org/genproto/googleapis/rpc digest
    to
    [`29210b9`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/29210b9)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6250](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6250)
    - chore(deps): update module golang.org/x/text to v0.22.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6252](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6252)
    - fix(deps): update googleapis to
    [`7023788`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/7023788)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6251](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6251)
    - chore(deps): update golang.org/x/telemetry digest to
    [`3af0d96`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/3af0d96)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6253](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6253)
    - chore(deps): update module google.golang.org/grpc to v1.70.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6254](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6254)
    - fix(deps): update module go.opentelemetry.io/otel/trace to v1.34.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6256](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6256)
    - fix(deps): update module go.opentelemetry.io/collector/pdata to
    v1.25.0 by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6255](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6255)
    - chore(deps): update module github.com/cloudflare/circl to v1.6.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6259](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6259)
    - chore(deps): update lycheeverse/lychee-action action to v2.3.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6258](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6258)
    - chore(deps): update module github.com/catenacyber/perfsprint to v0.8.0
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6261](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6261)
    - Create scorecard.yml to enable OSSF Scorecard reporting by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6247](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6247)
    - chore(deps): update actions/upload-artifact digest to
    [`ff15f03`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/ff15f03)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6262](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6262)
    - chore(deps): update actions/checkout action to v4.2.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6263](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6263)
    - chore(deps): update golang.org/x/telemetry digest to
    [`c67c2d1`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/c67c2d1)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6264](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6264)
    - chore(deps): update ossf/scorecard-action action to v2.4.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6265](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6265)
    - chore(deps): update actions/upload-artifact action to v4 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6266](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6266)
    - fix(deps): update build-tools to v0.18.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6276](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6276)
    - fix(deps): update module google.golang.org/protobuf to v1.36.5 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6277](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6277)
    - Use renovate best-practices by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6267](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6267)
    - chore(deps): pin dependencies by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6278](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6278)
    - chore(deps): update golang.org/x/telemetry digest to
    [`557cf9c`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/557cf9c)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6279](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6279)
    - Fix comment of the RecordOnly sampling decision by
    [@&#8203;XSAM](https://redirect.github.com/XSAM) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6257](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6257)
    - Default github workflow permission read-all by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6268](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6268)
    - Add an OpenSSF badge to README.md by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6269](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6269)
    - chore(deps): update python docker tag to v3.13.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6283](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6283)
    - fix(deps): update golang.org/x to
    [`f9890c6`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/f9890c6)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6282](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6282)
    - chore(deps): update github/codeql-action digest to
    [`9e8d078`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/9e8d078)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6287](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6287)
    - chore(deps): update module github.com/grpc-ecosystem/grpc-gateway/v2
    to v2.26.1 by [@&#8203;renovate](https://redirect.github.com/renovate)
    in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6288](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6288)
    - chore(deps): update module golang.org/x/crypto to v0.33.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6290](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6290)
    - fix(deps): update googleapis to
    [`e9438ea`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/e9438ea)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6289](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6289)
    - chore(deps): update otel/weaver docker tag to v0.13.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6292](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6292)
    - chore(deps): update module 4d63.com/gochecknoglobals to v0.2.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6291](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6291)
    - chore(deps): update module go-simpler.org/sloglint to v0.9.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6293](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6293)
    - chore(deps): update module github.com/catenacyber/perfsprint to v0.8.1
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6294](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6294)
    - Close stale issues and PRs after 2 years of inactivity by
    [@&#8203;dmathieu](https://redirect.github.com/dmathieu) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6284](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6284)
    - chore(deps): pin actions/stale action to
    [`5bef64f`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/5bef64f)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6295](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6295)
    - fix(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6297](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6297)
    - chore(deps): update module github.com/ldez/exptostd to v0.4.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6300](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6300)
    - fix(deps): update module github.com/golangci/golangci-lint to v1.64.2
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6301](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6301)
    - Document and check resource comparability by
    [@&#8203;MrAlias](https://redirect.github.com/MrAlias) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6272](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6272)
    - chore(deps): update module github.com/mgechev/revive to v1.6.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6306](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6306)
    - chore(deps): update otel/weaver docker tag to v0.13.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6309](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6309)
    - fix(deps): update module github.com/golangci/golangci-lint to v1.64.4
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6310](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6310)
    - chore(deps): update golang.org/x/telemetry digest to
    [`7530529`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/7530529)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6305](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6305)
    - chore(deps): update module github.com/gostaticanalysis/forcetypeassert
    to v0.2.0 by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6312](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6312)
    - fix(deps): update googleapis to
    [`5a70512`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/5a70512)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6308](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6308)
    - Add support for Go 1.24 by
    [@&#8203;dmathieu](https://redirect.github.com/dmathieu) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6304](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6304)
    - Replace tenv with usetesting by
    [@&#8203;dmathieu](https://redirect.github.com/dmathieu) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6313](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6313)
    - chore(deps): update module github.com/securego/gosec/v2 to v2.22.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6314](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6314)
    - \[chore] Fix go-work Make target with the highest required Go version
    by [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6285](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6285)
    - chore(deps): update module github.com/tdakkota/asciicheck to v0.4.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6316](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6316)
    - fix(deps): update module github.com/golangci/golangci-lint to v1.64.5
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6319](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6319)
    - chore(deps): update otel/weaver docker tag to v0.13.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6318](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6318)
    - sdk/log: Change BenchmarkLoggerNewRecord to BenchmarkLoggerEmit by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6315](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6315)
    - chore(deps): update golang.org/x/telemetry digest to
    [`6f9b61d`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/6f9b61d)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6321](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6321)
    - chore(deps): update module github.com/tdakkota/asciicheck to v0.4.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6322](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6322)
    - chore(deps): update module github.com/tetafro/godot to v1.5.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6323](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6323)
    - \[chore] Use public Linux ARM64 runners by
    [@&#8203;Kielek](https://redirect.github.com/Kielek) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6320](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6320)
    - chore(deps): update module github.com/mgechev/revive to v1.7.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6326](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6326)
    - chore(deps): update module github.com/spf13/cobra to v1.9.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6324](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6324)
    - chore(deps): update module github.com/4meepo/tagalign to v1.4.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6327](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6327)
    - fix(deps): update golang.org/x to
    [`eff6e97`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/eff6e97)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6325](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6325)
    - fix(deps): update golang.org/x to
    [`aa4b98e`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/aa4b98e)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6336](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6336)
    - chore(deps): update module github.com/nunnatsa/ginkgolinter to v0.19.1
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6311](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6311)
    - sdk/log: Add FilterProcessor and EnabledParameters by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6317](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6317)
    - chore(deps): update actions/cache digest to
    [`0c907a7`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/0c907a7)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6337](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6337)
    - fix(deps): update googleapis to
    [`56aae31`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/56aae31)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6338](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6338)
    - chore(deps): update module github.com/catenacyber/perfsprint to v0.8.2
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6339](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6339)
    - Add FOSSA scanning workflow by
    [@&#8203;opentelemetrybot](https://redirect.github.com/opentelemetrybot)
    in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6331](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6331)
    - chore(deps): update module github.com/kisielk/errcheck to v1.9.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6340](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6340)
    - \[chore] Add a policy on adding tests by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6334](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6334)
    - \[chore] Add OpenSSF Best Practices badge by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6345](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6345)
    - chore(deps): update golang.org/x/telemetry digest to
    [`165e2f8`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/165e2f8)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6346](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6346)
    - chore(deps): update module github.com/quasilyte/go-ruleguard to v0.4.4
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6348](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6348)
    - chore(deps): update module github.com/ldez/exptostd to v0.4.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6357](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6357)
    - chore(deps): update actions/upload-artifact digest to
    [`4cec3d8`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/4cec3d8)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6356](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6356)
    - chore(deps): update github/codeql-action digest to
    [`b56ba49`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/b56ba49)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6354](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6354)
    - chore(deps): update ossf/scorecard-action action to v2.4.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6358](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6358)
    - fix(deps): update module github.com/google/go-cmp to v0.7.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6359](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6359)
    - chore(deps): update golang.org/x by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6355](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6355)
    - chore(deps): update module
    github.com/gaijinentertainment/go-exhaustruct/v3 to v3.3.1 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6361](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6361)
    - chore(deps): update python:3.13.2-slim-bullseye docker digest to
    [`d3852c9`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/d3852c9)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6367](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6367)
    - chore(deps): update module golang.org/x/crypto to v0.35.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6366](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6366)
    - \[chore] clean up revive configuration by
    [@&#8203;mmorel-35](https://redirect.github.com/mmorel-35) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6353](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6353)
    - chore(deps): update python:3.13.2-slim-bullseye docker digest to
    [`31b581c`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/31b581c)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6370](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6370)
    - chore(deps): update module go.opentelemetry.io/build-tools to v0.19.0
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6374](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6374)
    - chore(deps): update module github.com/bombsimon/wsl/v4 to v4.6.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6373](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6373)
    - fix(deps): update build-tools to v0.19.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6376](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6376)
    - chore(deps): update actions/download-artifact digest to
    [`cc20338`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/cc20338)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6377](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6377)
    - sdk/trace: Fix goroutine leak in simpleSpanProcessor.Shutdown by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6368](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6368)
    - chore(deps): update codecov/codecov-action action to v5.4.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6380](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6380)
    - chore(deps): update module github.com/catenacyber/perfsprint to v0.9.0
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6379](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6379)
    - sdk/trace: Fix gorountine leak in batchSpanProcessor.ForceFlush by
    [@&#8203;pellared](https://redirect.github.com/pellared) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6369](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6369)
    - chore(deps): update module github.com/protonmail/go-crypto to v1.1.6
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6383](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6383)
    - chore(deps): update module github.com/go-git/go-git/v5 to v5.14.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6385](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6385)
    - chore(deps): update actions/cache digest to
    [`d4323d4`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/d4323d4)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6384](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6384)
    - chore(deps): update module github.com/kkhaike/contextcheck to v1.1.6
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6387](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6387)
    - chore(deps): update module 4d63.com/gocheckcompilerdirectives to
    v1.3.0 by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6388](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6388)
    - fix(deps): update golang.org/x to
    [`dead583`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/dead583)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6389](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6389)
    - chore(deps): update mvdan.cc/unparam digest to
    [`0df0534`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/0df0534)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6391](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6391)
    - fix(deps): update module github.com/golangci/golangci-lint to v1.64.6
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6394](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6394)
    - chore(deps): update github.com/golangci/dupl digest to
    [`44c6a0b`](https://redirect.github.com/open-telemetry/opentelemetry-go/commit/44c6a0b)
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6398](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6398)
    - Look at stale issues in ascending order by
    [@&#8203;dmathieu](https://redirect.github.com/dmathieu) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6396](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6396)
    - fix(deps): update build-tools to v0.20.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6403](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6403)
    - Move trace sdk tests from trace_test into trace package by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6400](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6400)
    - fix(deps): update module google.golang.org/grpc to v1.71.0 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6409](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6409)
    - chore(deps): update module github.com/ryancurrah/gomodguard to v1.4.1
    by [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6411](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6411)
    - chore(deps): update module github.com/securego/gosec/v2 to v2.22.2 by
    [@&#8203;renovate](https://redirect.github.com/renovate) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6412](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6412)
    - Release v1.35.0/v0.57.0/v0.11.0 by
    [@&#8203;XSAM](https://redirect.github.com/XSAM) in
    [https://github.com/open-telemetry/opentelemetry-go/pull/6407](https://redirect.github.com/open-telemetry/opentelemetry-go/pull/6407)
    
    **Full Changelog**:
    https://github.com/open-telemetry/opentelemetry-go/compare/v1.34.0...v1.35.0
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOS4yMDcuMSIsInVwZGF0ZWRJblZlciI6IjM5LjIwNy4xIiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
