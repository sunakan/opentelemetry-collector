commit 440bb82635f553cd97f630d1015ee5b56e9ff304
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jan 16 11:45:40 2024 +0100

    Update module go.opentelemetry.io/collector/exporter/otlphttpexporter to v0.92.0 (#9291)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [go.opentelemetry.io/collector/exporter/otlphttpexporter](https://togithub.com/open-telemetry/opentelemetry-collector)
    | `v0.91.0` -> `v0.92.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlphttpexporter/v0.92.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlphttpexporter/v0.92.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlphttpexporter/v0.91.0/v0.92.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlphttpexporter/v0.91.0/v0.92.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-collector
    (go.opentelemetry.io/collector/exporter/otlphttpexporter)</summary>
    
    ###
    [`v0.92.0`](https://togithub.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v101v0920)
    
    [Compare
    Source](https://togithub.com/open-telemetry/opentelemetry-collector/compare/v0.91.0...v0.92.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `exporters/sending_queue`: Do not re-enqueue failed batches, rely on
    the retry_on_failure strategy instead.
    ([#&#8203;8382](https://togithub.com/open-telemetry/opentelemetry-collector/issues/8382))
    The current re-enqueuing behavior is not obvious and cannot be
    configured. It takes place only for persistent queue
    and only if `retry_on_failure::enabled=true` even if `retry_on_failure`
    is a setting for a different backoff retry
    strategy. This change removes the re-enqueuing behavior. Consider
    increasing `retry_on_failure::max_elapsed_time`
    to reduce chances of data loss or set it to 0 to keep retrying until
    requests succeed.
    
    - `confmap`: Make the option `WithErrorUnused` enabled by default when
    unmarshaling configuration
    ([#&#8203;7102](https://togithub.com/open-telemetry/opentelemetry-collector/issues/7102))
    The option `WithErrorUnused` is now enabled by default, and a new option
    `WithIgnoreUnused` is introduced to ignore
        errors about unused fields.
    
    - `status`: Deprecate `ReportComponentStatus` in favor of
    `ReportStatus`. This new function does not return an error.
    ([#&#8203;9148](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9148))
    
    ##### 🚩 Deprecations 🚩
    
    - `connectortest`: Deprecate
    connectortest.New\[Metrics|Logs|Traces]Router in favour of
    connector.New\[Metrics|Logs|Traces]Router
    ([#&#8203;9095](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9095))
    
    - `exporterhelper`: Deprecate exporterhelper.RetrySettings in favor of
    configretry.BackOffConfig
    ([#&#8203;9091](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9091))
    
    - `extension/ballast`: Deprecate `memory_ballast` extension.
    ([#&#8203;8343](https://togithub.com/open-telemetry/opentelemetry-collector/issues/8343))
        Use `GOMEMLIMIT` environment variable instead.
    
    - `connector`: Deprecate \[Metrics|Logs|Traces]Router in favour of
    \[Metrics|Logs|Traces]RouterAndConsumer
    ([#&#8203;9095](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9095))
    
    ##### 💡 Enhancements 💡
    
    - `exporterhelper`: Add RetrySettings validation function
    ([#&#8203;9089](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9089))
    Validate that time.Duration, multiplier values in configretry are
    non-negative, and randomization_factor is between 0 and 1
    
    - `service`: Enable `telemetry.useOtelForInternalMetrics` by updating
    the flag to beta
    ([#&#8203;7454](https://togithub.com/open-telemetry/opentelemetry-collector/issues/7454))
    The metrics generated should be consistent with the metrics generated
        previously with OpenCensus. Users can disable the behaviour
        by setting `--feature-gates -telemetry.useOtelForInternalMetrics` at
        collector start.
    
    - `mdatagen`: move component from contrib to core
    ([#&#8203;9172](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9172))
    
    - `semconv`: Generated Semantic conventions 1.22.0.
    ([#&#8203;8686](https://togithub.com/open-telemetry/opentelemetry-collector/issues/8686))
    
    - `confignet`: Add `dialer_timeout` config option.
    ([#&#8203;9066](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9066))
    
    - `processor/memory_limiter`: Update config validation errors
    ([#&#8203;9059](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9059))
    - Fix names of the config fields that are validated in the error
    messages
        -   Move the validation from start to the initialization phrase
    
    - `exporterhelper`: Add config Validate for TimeoutSettings
    ([#&#8203;9104](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9104))
    
    ##### 🧰 Bug fixes 🧰
    
    - `memorylimiterprocessor`: Fixed leaking goroutines from
    memorylimiterprocessor
    ([#&#8203;9099](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9099))
    - `cmd/otelcorecol`: Fix the code detecting if the collector is running
    as a service on Windows.
    ([#&#8203;7350](https://togithub.com/open-telemetry/opentelemetry-collector/issues/7350))
    Removed the `NO_WINDOWS_SERVICE` environment variable given it is not
    needed anymore.
    - `otlpexporter`: remove dependency of otlphttpreceiver on otlpexporter
    ([#&#8203;6454](https://togithub.com/open-telemetry/opentelemetry-collector/issues/6454))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4xMjcuMCIsInVwZGF0ZWRJblZlciI6IjM3LjEyNy4wIiwidGFyZ2V0QnJhbmNoIjoibWFpbiJ9-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
