commit 7b35828d92ee5c50ab4d2c3bc2095d19c2bc1158
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Wed Feb 7 10:50:21 2024 -0800

    Update module go.opentelemetry.io/contrib/propagators/b3 to v1.23.0 (#9498)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [go.opentelemetry.io/contrib/propagators/b3](https://togithub.com/open-telemetry/opentelemetry-go-contrib)
    | `v1.22.0` -> `v1.23.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2fpropagators%2fb3/v1.23.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcontrib%2fpropagators%2fb3/v1.23.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcontrib%2fpropagators%2fb3/v1.22.0/v1.23.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2fpropagators%2fb3/v1.22.0/v1.23.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-go-contrib
    (go.opentelemetry.io/contrib/propagators/b3)</summary>
    
    ###
    [`v1.23.0`](https://togithub.com/open-telemetry/opentelemetry-go-contrib/releases/tag/v1.23.0):
    /v0.48.0/v0.17.0/v0.3.0
    
    [Compare
    Source](https://togithub.com/open-telemetry/opentelemetry-go-contrib/compare/v1.22.0...v1.23.0)
    
    ##### Added
    
    - Add client metric support to
    `go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp`.
    ([#&#8203;4707](https://togithub.com/open-telemetry/opentelemetry-go-contrib/issues/4707))
    - Add peer attributes to spans recorded by `NewClientHandler`,
    `NewServerHandler` in
    `go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc`.
    ([#&#8203;4873](https://togithub.com/open-telemetry/opentelemetry-go-contrib/issues/4873))
    - Add support for `cloud.account.id`, `cloud.availability_zone` and
    `cloud.region` in the AWS ECS detector.
    ([#&#8203;4860](https://togithub.com/open-telemetry/opentelemetry-go-contrib/issues/4860))
    
    ##### Changed
    
    - The fallback options in
    `go.opentelemetry.io/contrib/exporters/autoexport` now accept factory
    functions.
    ([#&#8203;4891](https://togithub.com/open-telemetry/opentelemetry-go-contrib/issues/4891))
    - `WithFallbackMetricReader(metric.Reader) MetricOption` is replaced
    with `func WithFallbackMetricReader(func(context.Context)
    (metric.Reader, error)) MetricOption`.
    - `WithFallbackSpanExporter(trace.SpanExporter) SpanOption` is replaced
    with `WithFallbackSpanExporter(func(context.Context)
    (trace.SpanExporter, error)) SpanOption`.
    
    ##### Deprecated
    
    - The `RequestCount`, `RequestContentLength`, `ResponseContentLength`,
    `ServerLatency` constants in
    `go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp` are
    deprecated.
    ([#&#8203;4707](https://togithub.com/open-telemetry/opentelemetry-go-contrib/issues/4707))
    
    ##### Fixed
    
    - Do not panic in
    `go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc`
    if `MeterProvider` returns a `nil` instrument.
    ([#&#8203;4875](https://togithub.com/open-telemetry/opentelemetry-go-contrib/issues/4875))
    
    #### New Contributors
    
    - [@&#8203;acpana](https://togithub.com/acpana) made their first
    contribution in
    [https://github.com/open-telemetry/opentelemetry-go-contrib/pull/4831](https://togithub.com/open-telemetry/opentelemetry-go-contrib/pull/4831)
    - [@&#8203;hiroyaonoe](https://togithub.com/hiroyaonoe) made their first
    contribution in
    [https://github.com/open-telemetry/opentelemetry-go-contrib/pull/4704](https://togithub.com/open-telemetry/opentelemetry-go-contrib/pull/4704)
    - [@&#8203;hcelaloner](https://togithub.com/hcelaloner) made their first
    contribution in
    [https://github.com/open-telemetry/opentelemetry-go-contrib/pull/4891](https://togithub.com/open-telemetry/opentelemetry-go-contrib/pull/4891)
    
    **Full Changelog**:
    https://github.com/open-telemetry/opentelemetry-go-contrib/compare/v1.22.0...v1.23.0
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "on tuesday" (UTC), Automerge - At any
    time (no schedule defined).
    
    🚦 **Automerge**: Disabled by config. Please merge this manually once you
    are satisfied.
    
    ♻ **Rebasing**: Whenever PR becomes conflicted, or you tick the
    rebase/retry checkbox.
    
    🔕 **Ignore**: Close this PR and you won't be reminded about this update
    again.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR has been generated by [Mend
    Renovate](https://www.mend.io/free-developer-tools/renovate/). View
    repository job log
    [here](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4xNzMuMCIsInVwZGF0ZWRJblZlciI6IjM3LjE3My4wIiwidGFyZ2V0QnJhbmNoIjoibWFpbiJ9-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
