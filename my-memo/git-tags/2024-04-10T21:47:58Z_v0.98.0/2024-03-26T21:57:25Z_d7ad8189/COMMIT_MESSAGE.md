commit d7ad8189db58009dd965cc75a180b2440d534567
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Mar 26 14:57:25 2024 -0700

    Update module go.opentelemetry.io/collector/receiver/otlpreceiver to v0.97.0 (#9847)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [go.opentelemetry.io/collector/receiver/otlpreceiver](https://togithub.com/open-telemetry/opentelemetry-collector)
    | `v0.96.0` -> `v0.97.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2freceiver%2fotlpreceiver/v0.97.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2freceiver%2fotlpreceiver/v0.97.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2freceiver%2fotlpreceiver/v0.96.0/v0.97.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2freceiver%2fotlpreceiver/v0.96.0/v0.97.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-collector
    (go.opentelemetry.io/collector/receiver/otlpreceiver)</summary>
    
    ###
    [`v0.97.0`](https://togithub.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v140v0970)
    
    [Compare
    Source](https://togithub.com/open-telemetry/opentelemetry-collector/compare/v0.96.0...v0.97.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `telemetry`: Remove telemetry.useOtelForInternalMetrics stable feature
    gate
    ([#&#8203;9752](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9752))
    
    ##### 🚀 New components 🚀
    
    - `exporter/nop`: Add the `nopexporter` to serve as a placeholder
    exporter in a pipeline
    ([#&#8203;7316](https://togithub.com/open-telemetry/opentelemetry-collector/issues/7316))
    This is primarily useful for starting the Collector with only extensions
    enabled
        or to test Collector pipeline throughput.
    
    - `receiver/nop`: Add the `nopreceiver` to serve as a placeholder
    receiver in a pipeline
    ([#&#8203;7316](https://togithub.com/open-telemetry/opentelemetry-collector/issues/7316))
    This is primarily useful for starting the Collector with only extensions
    enabled.
    
    ##### 💡 Enhancements 💡
    
    - `configtls`: Validates TLS min_version and max_version
    ([#&#8203;9475](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9475))
        Introduces `Validate()` method in TLSSetting.
    
    - `configcompression`: Mark module as Stable.
    ([#&#8203;9571](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9571))
    
    - `cmd/mdatagen`: Use go package name for the scope name by default and
    add an option to provide the scope name in metadata.yaml.
    ([#&#8203;9693](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9693))
    
    - `cmd/mdatagen`: Generate the lifecycle tests for components by
    default.
    ([#&#8203;9683](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9683))
    It's encouraged to have lifecycle tests for all components enadled, but
    they can be disabled if needed
    in metadata.yaml with `skip_lifecycle: true` and `skip_shutdown: true`
    under `tests` section.
    
    - `cmd/mdatagen`: optimize the mdatagen for the case like batchprocessor
    which use a common struct to implement consumer.Traces,
    consumer.Metrics, consumer.Logs in the meantime.
    ([#&#8203;9688](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9688))
    
    ##### 🧰 Bug fixes 🧰
    
    - `exporterhelper`: Fix persistent queue size backup on reads.
    ([#&#8203;9740](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9740))
    - `processor/batch`: Prevent starting unnecessary goroutines.
    ([#&#8203;9739](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9739))
    - `otlphttpexporter`: prevent error on empty response body when content
    type is application/json
    ([#&#8203;9666](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9666))
    - `confmap`: confmap honors `Unmarshal` methods on config embedded
    structs.
    ([#&#8203;6671](https://togithub.com/open-telemetry/opentelemetry-collector/issues/6671))
    - `otelcol`: Respect telemetry configuration when running as a Windows
    service
    ([#&#8203;5300](https://togithub.com/open-telemetry/opentelemetry-collector/issues/5300))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4yNjkuMiIsInVwZGF0ZWRJblZlciI6IjM3LjI2OS4yIiwidGFyZ2V0QnJhbmNoIjoibWFpbiJ9-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
