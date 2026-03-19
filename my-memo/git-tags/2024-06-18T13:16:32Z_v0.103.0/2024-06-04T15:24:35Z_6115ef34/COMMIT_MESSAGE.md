commit 6115ef3498b8b234e01bb897096c53794d439228
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jun 4 08:24:35 2024 -0700

    Update All go.opentelemetry.io/collector packages to v0.102.0 (#10304)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [go.opentelemetry.io/collector/exporter/otlpexporter](https://togithub.com/open-telemetry/opentelemetry-collector)
    | `v0.101.0` -> `v0.102.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlpexporter/v0.102.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlpexporter/v0.102.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlpexporter/v0.101.0/v0.102.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlpexporter/v0.101.0/v0.102.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/collector/exporter/otlphttpexporter](https://togithub.com/open-telemetry/opentelemetry-collector)
    | `v0.101.0` -> `v0.102.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlphttpexporter/v0.102.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlphttpexporter/v0.102.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlphttpexporter/v0.101.0/v0.102.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlphttpexporter/v0.101.0/v0.102.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/collector/receiver/otlpreceiver](https://togithub.com/open-telemetry/opentelemetry-collector)
    | `v0.101.0` -> `v0.102.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2freceiver%2fotlpreceiver/v0.102.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2freceiver%2fotlpreceiver/v0.102.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2freceiver%2fotlpreceiver/v0.101.0/v0.102.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2freceiver%2fotlpreceiver/v0.101.0/v0.102.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-collector
    (go.opentelemetry.io/collector/exporter/otlpexporter)</summary>
    
    ###
    [`v0.102.0`](https://togithub.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v190v01020)
    
    [Compare
    Source](https://togithub.com/open-telemetry/opentelemetry-collector/compare/v0.101.0...v0.102.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `envprovider`: Restricts Environment Variable names. Environment
    variable names must now be ASCII only and start with a letter or an
    underscore, and can only contain underscores, letters, or numbers.
    ([#&#8203;9531](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9531))
    - `confighttp`: Apply MaxRequestBodySize to the result of a decompressed
    body
    ([#&#8203;10289](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10289))
    When using compressed payloads, the Collector would verify only the size
    of the compressed payload.
    This change applies the same restriction to the decompressed content. As
    a security measure, a limit of 20 MiB was added, which makes this a
    breaking change.
    For most clients, this shouldn't be a problem, but if you often have
    payloads that decompress to more than 20 MiB, you might want to either
    configure your
    client to send smaller batches (recommended), or increase the limit
    using the MaxRequestBodySize option.
    
    ##### 💡 Enhancements 💡
    
    - `mdatagen`: auto-generate utilities to test component telemetry
    ([#&#8203;19783](https://togithub.com/open-telemetry/opentelemetry-collector/issues/19783))
    - `mdatagen`: support setting an AttributeSet for async instruments
    ([#&#8203;9674](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9674))
    - `mdatagen`: support using telemetry level in telemetry builder
    ([#&#8203;10234](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10234))
    This allows components to set the minimum level needed for them to
    produce telemetry. By default, this is set to
    configtelemetry.LevelBasic. If the telemetry level is below that minimum
    level, then the noop meter is used for metrics.
    - `mdatagen`: add support for bucket boundaries for histograms
    ([#&#8203;10218](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10218))
    - `releases`: add documentation in how to verify the image signatures
    using cosign
    ([#&#8203;9610](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9610))
    
    ##### 🧰 Bug fixes 🧰
    
    - `batchprocessor`: ensure attributes are set on cardinality metadata
    metric
    ([#&#8203;9674](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9674))
    - `batchprocessor`: Fixing processor_batch_metadata_cardinality which
    was broken in v0.101.0
    ([#&#8203;10231](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10231))
    - `batchprocessor`: respect telemetry level for all metrics
    ([#&#8203;10234](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10234))
    - `exporterhelper`: Fix potential deadlocks in BatcherSender shutdown
    ([#&#8203;10255](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10255))
    
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
    
    This PR has been generated by [Mend
    Renovate](https://www.mend.io/free-developer-tools/renovate/). View
    repository job log
    [here](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4zNzcuOCIsInVwZGF0ZWRJblZlciI6IjM3LjM3Ny44IiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
