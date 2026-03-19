commit 5f556899c2c8b1ce7ff3b653770c9620ca0b980f
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Sat Oct 12 17:34:16 2024 -0700

    fix(deps): update module go.opentelemetry.io/collector/consumer to v0.111.0 (#11431)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [go.opentelemetry.io/collector/consumer](https://redirect.github.com/open-telemetry/opentelemetry-collector)
    | `v0.109.0` -> `v0.111.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fconsumer/v0.111.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fconsumer/v0.111.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fconsumer/v0.109.0/v0.111.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fconsumer/v0.109.0/v0.111.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-collector
    (go.opentelemetry.io/collector/consumer)</summary>
    
    ###
    [`v0.111.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1170v01110)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.110.0...v0.111.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `service/telemetry`: Change default metrics address to
    "localhost:8888" instead of ":8888"
    ([#&#8203;11251](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11251))
    This behavior can be disabled by disabling the feature gate
    'telemetry.UseLocalHostAsDefaultMetricsAddress'.
    - `loggingexporter`: Removed the deprecated logging exporter. Use the
    debug exporter instead.
    ([#&#8203;11037](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11037))
    
    ##### 🚩 Deprecations 🚩
    
    - `service/telemetry`: Deprecate service::telemetry::metrics::address in
    favor of service::telemetry::metrics::readers.
    ([#&#8203;11205](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11205))
    - `processorhelper`: Deprecate BuildProcessorMetricName as it's no
    longer needed since introduction of mdatagen
    ([#&#8203;11302](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11302))
    
    ##### 💡 Enhancements 💡
    
    - `ocb`: create docker images for OCB, per
    [https://github.com/open-telemetry/opentelemetry-collector-releases/pull/671](https://redirect.github.com/open-telemetry/opentelemetry-collector-releases/pull/671)
    ([#&#8203;5712](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/5712))
    Adds standard Docker images for OCB to Dockerhub and GitHub, see
    hub.docker.com/r/otel/opentelemetry-collector-builder
    - `confighttp`: Snappy compression to lazy read for memory efficiency
    ([#&#8203;11177](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11177))
    - `httpsprovider`: Mark the httpsprovider as stable.
    ([#&#8203;11191](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11191))
    - `httpprovider`: Mark the httpprovider as stable.
    ([#&#8203;11191](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11191))
    - `yamlprovider`: Mark the yamlprovider as stable.
    ([#&#8203;11192](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11192))
    - `confmap`: Allow using any YAML structure as a string when loading
    configuration including time.Time formats
    ([#&#8203;10659](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10659))
    Previously, fields with time.Time formats could not be used as strings
    in configurations
    
    ##### 🧰 Bug fixes 🧰
    
    - `processorhelper`: Fix data race condition, concurrent writes to the
    err variable, causes UB (Undefined Behavior)
    ([#&#8203;11350](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11350))
    - `cmd/builder`: re-adds function to properly set and view version
    number of OpenTelemetry Collector Builder (ocb) binaries
    ([#&#8203;11208](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11208))
    - `pdata`: Unmarshal Span and SpanLink flags from JSON
    ([#&#8203;11267](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11267))
    
    ###
    [`v0.110.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1160v01100)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.109.0...v0.110.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `processorhelper`: Update incoming/outgoing metrics to a single metric
    with a `otel.signal` attributes.
    ([#&#8203;11144](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11144))
        The following metrics were added in the previous version
        -   otelcol_processor_incoming_spans
        -   otelcol_processor_outgoing_spans
        -   otelcol_processor_incoming_metric_points
        -   otelcol_processor_outgoing_metric_points
        -   otelcol_processor_incoming_log_records
        -   otelcol_processor_outgoing_log_records
    They are being replaced with the following to more closely align with
    OTEP 259:
        -   otelcol_processor_incoming_items
        -   otelcol_processor_outgoing_items
    - `processorhelper`: Remove deprecated `[Traces|Metrics|Logs]`Inserted
    funcs
    ([#&#8203;11151](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11151))
    - `config`: Mark UseLocalHostAsDefaultHostfeatureGate as stable
    ([#&#8203;11235](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11235))
    
    ##### 🚩 Deprecations 🚩
    
    - `processorhelper`: deprecate accepted/refused/dropped metrics
    ([#&#8203;11201](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11201))
    The following metrics are being deprecated as they were only used in a
    single
        processor:
        -   `otelcol_processor_accepted_log_records`
        -   `otelcol_processor_accepted_metric_points`
        -   `otelcol_processor_accepted_spans`
        -   `otelcol_processor_dropped_log_records`
        -   `otelcol_processor_dropped_metric_points`
        -   `otelcol_processor_dropped_spans`
        -   `otelcol_processor_refused_log_records`
        -   `otelcol_processor_refused_metric_points`
        -   `otelcol_processor_refused_spans`
    
    ##### 💡 Enhancements 💡
    
    - `pdata`: Add support to MoveTo for Map, allow avoiding copies
    ([#&#8203;11175](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11175))
    - `mdatagen`: Add stability field to telemetry metrics, allowing the
    generated description to include a stability string.
    ([#&#8203;11160](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11160))
    - `confignet`: Mark module as Stable.
    ([#&#8203;9801](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9801))
    - `confmap/provider/envprovider`: Support default values when env var is
    empty
    ([#&#8203;5228](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/5228))
    - `mdatagen`: mdatagen `validateMetrics()` support validate metrics in
    `telemetry.metric`
    ([#&#8203;10925](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10925))
    - `service/telemetry`: Mark
    useOtelWithSDKConfigurationForInternalTelemetry as stable
    ([#&#8203;7532](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/7532))
    - `mdatagen`: Use cobra for the command, add version flag
    ([#&#8203;11196](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11196))
    
    ##### 🧰 Bug fixes 🧰
    
    - `service`: Ensure process telemetry is registered when internal
    telemetry is configured with readers instead of an address.
    ([#&#8203;11093](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11093))
    
    - `mdatagen`: Fix incorrect generation of metric tests with boolean
    attributes.
    ([#&#8203;11169](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11169))
    
    - `otelcol`: Fix the Windows Event Log configuration when running the
    Collector as a Windows service.
    ([#&#8203;5297](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/5297),
    [#&#8203;11051](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11051))
    
    - `builder`: Honor build_tags in config
    ([#&#8203;11156](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11156))
    
    - `builder`: Fix version for providers in the default config
    ([#&#8203;11123](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11123))
    
    - `cmd/builder`: Temporarily disable strict versioning checks
    ([#&#8203;11129](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11129),
    [#&#8203;11152](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11152))
    The strict versioning check may be enabled by default in a future
    version once all configuration providers are stabilized.
    
    - `confmap`: Fix loading config of a component from a different source.
    ([#&#8203;11154](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11154))
    This issue only affected loading the whole component config, loading
    parts of a component config from a different source was working
    correctly.
    
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
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOC4xMTUuMSIsInVwZGF0ZWRJblZlciI6IjM4LjExNS4xIiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
