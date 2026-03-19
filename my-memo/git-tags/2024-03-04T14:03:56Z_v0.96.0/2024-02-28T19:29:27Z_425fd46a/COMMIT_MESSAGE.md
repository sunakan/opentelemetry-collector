commit 425fd46a15bd25ee88faf0da5e957d329bf73785
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Wed Feb 28 11:29:27 2024 -0800

    Update module go.opentelemetry.io/contrib/propagators/b3 to v1.24.0 (#9648)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [go.opentelemetry.io/contrib/propagators/b3](https://togithub.com/open-telemetry/opentelemetry-go-contrib)
    | `v1.23.0` -> `v1.24.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcontrib%2fpropagators%2fb3/v1.24.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcontrib%2fpropagators%2fb3/v1.24.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcontrib%2fpropagators%2fb3/v1.23.0/v1.24.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcontrib%2fpropagators%2fb3/v1.23.0/v1.24.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-go-contrib
    (go.opentelemetry.io/contrib/propagators/b3)</summary>
    
    ###
    [`v1.24.0`](https://togithub.com/open-telemetry/opentelemetry-go-contrib/releases/tag/v1.24.0):
    /v0.49.0/v0.18.0/v0.4.0
    
    [Compare
    Source](https://togithub.com/open-telemetry/opentelemetry-go-contrib/compare/v1.23.0...v1.24.0)
    
    This release is the last to support [Go 1.20]. The next release will
    require at least [Go 1.21].
    
    ##### Added
    
    - Support [Go 1.22].
    ([#&#8203;5082](https://togithub.com/open-telemetry/opentelemetry-go-contrib/issues/5082))
    - Add support for Summary metrics to
    `go.opentelemetry.io/contrib/bridges/prometheus`.
    ([#&#8203;5089](https://togithub.com/open-telemetry/opentelemetry-go-contrib/issues/5089))
    - Add support for Exponential (native) Histograms in
    `go.opentelemetry.io/contrib/bridges/prometheus`.
    ([#&#8203;5093](https://togithub.com/open-telemetry/opentelemetry-go-contrib/issues/5093))
    
    ##### Removed
    
    - The deprecated `RequestCount` constant in
    `go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp` is
    removed.
    ([#&#8203;4894](https://togithub.com/open-telemetry/opentelemetry-go-contrib/issues/4894))
    - The deprecated `RequestContentLength` constant in
    `go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp` is
    removed.
    ([#&#8203;4894](https://togithub.com/open-telemetry/opentelemetry-go-contrib/issues/4894))
    - The deprecated `ResponseContentLength` constant in
    `go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp` is
    removed.
    ([#&#8203;4894](https://togithub.com/open-telemetry/opentelemetry-go-contrib/issues/4894))
    - The deprecated `ServerLatency` constant in
    `go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp` is
    removed.
    ([#&#8203;4894](https://togithub.com/open-telemetry/opentelemetry-go-contrib/issues/4894))
    
    ##### Fixed
    
    - Retrieving the body bytes count in
    `go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp` does not
    cause a data race anymore.
    ([#&#8203;5080](https://togithub.com/open-telemetry/opentelemetry-go-contrib/issues/5080))
    
    #### New Contributors
    
    - [@&#8203;arvindbr8](https://togithub.com/arvindbr8) made their first
    contribution in
    [https://github.com/open-telemetry/opentelemetry-go-contrib/pull/4897](https://togithub.com/open-telemetry/opentelemetry-go-contrib/pull/4897)
    - [@&#8203;wushujames](https://togithub.com/wushujames) made their first
    contribution in
    [https://github.com/open-telemetry/opentelemetry-go-contrib/pull/5135](https://togithub.com/open-telemetry/opentelemetry-go-contrib/pull/5135)
    
    **Full Changelog**:
    https://github.com/open-telemetry/opentelemetry-go-contrib/compare/v1.23.0...v1.24.0
    
    [Go 1.22]: https://go.dev/doc/go1.22
    
    [Go 1.21]: https://go.dev/doc/go1.21
    
    [Go 1.20]: https://go.dev/doc/go1.20
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4yMTIuMCIsInVwZGF0ZWRJblZlciI6IjM3LjIxMi4wIiwidGFyZ2V0QnJhbmNoIjoibWFpbiJ9-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
