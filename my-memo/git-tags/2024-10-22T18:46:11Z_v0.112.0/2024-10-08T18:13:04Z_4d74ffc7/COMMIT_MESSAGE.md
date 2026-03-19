commit 4d74ffc745af0d821fc3d122fd8781e3bd9bfe77
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Oct 8 11:13:04 2024 -0700

    Update All go.opentelemetry.io/collector packages to v1 (major) (#11395)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [go.opentelemetry.io/collector/confmap/provider/httpprovider](https://redirect.github.com/open-telemetry/opentelemetry-collector)
    | `v0.111.0` -> `v1.17.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fhttpprovider/v1.17.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fhttpprovider/v1.17.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fhttpprovider/v0.111.0/v1.17.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fhttpprovider/v0.111.0/v1.17.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/collector/confmap/provider/httpsprovider](https://redirect.github.com/open-telemetry/opentelemetry-collector)
    | `v0.111.0` -> `v1.17.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fhttpsprovider/v1.17.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fhttpsprovider/v1.17.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fhttpsprovider/v0.111.0/v1.17.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fhttpsprovider/v0.111.0/v1.17.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/collector/confmap/provider/yamlprovider](https://redirect.github.com/open-telemetry/opentelemetry-collector)
    | `v0.111.0` -> `v1.17.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fyamlprovider/v1.17.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fyamlprovider/v1.17.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fyamlprovider/v0.111.0/v1.17.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fyamlprovider/v0.111.0/v1.17.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    :warning: MAJOR VERSION UPDATE :warning: - please manually update this
    package
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-collector
    (go.opentelemetry.io/collector/confmap/provider/httpprovider)</summary>
    
    ###
    [`v1.17.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1170v01110)
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOC45Ny4wIiwidXBkYXRlZEluVmVyIjoiMzguOTcuMCIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jeS1tYWpvci11cGRhdGUiXX0=-->
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
