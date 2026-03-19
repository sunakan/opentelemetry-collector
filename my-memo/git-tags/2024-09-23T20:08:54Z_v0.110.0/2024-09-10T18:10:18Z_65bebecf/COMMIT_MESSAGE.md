commit 65bebecfb43ba608363e0dea24846b41931553c6
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Sep 10 11:10:18 2024 -0700

    Update All go.opentelemetry.io/collector packages to v1 (major) (#11110)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [go.opentelemetry.io/collector/confmap/provider/envprovider](https://redirect.github.com/open-telemetry/opentelemetry-collector)
    | `v0.108.1` -> `v1.15.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fenvprovider/v1.15.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fenvprovider/v1.15.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fenvprovider/v0.108.1/v1.15.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fenvprovider/v0.108.1/v1.15.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/collector/confmap/provider/envprovider](https://redirect.github.com/open-telemetry/opentelemetry-collector)
    | `v0.109.0` -> `v1.15.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fenvprovider/v1.15.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fenvprovider/v1.15.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fenvprovider/v0.109.0/v1.15.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2fenvprovider/v0.109.0/v1.15.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/collector/confmap/provider/fileprovider](https://redirect.github.com/open-telemetry/opentelemetry-collector)
    | `v0.108.1` -> `v1.15.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2ffileprovider/v1.15.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2ffileprovider/v1.15.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2ffileprovider/v0.108.1/v1.15.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2ffileprovider/v0.108.1/v1.15.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/collector/confmap/provider/fileprovider](https://redirect.github.com/open-telemetry/opentelemetry-collector)
    | `v0.109.0` -> `v1.15.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2ffileprovider/v1.15.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2ffileprovider/v1.15.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2ffileprovider/v0.109.0/v1.15.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2ffileprovider/v0.109.0/v1.15.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    (go.opentelemetry.io/collector/confmap/provider/envprovider)</summary>
    
    ###
    [`v1.15.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1150v01090)
    
    ##### 🛑 Breaking changes 🛑
    
    - `scraperhelper`: Remove deprecated `ObsReport`, `ObsReportSettings`,
    `NewObsReport` types/funcs
    ([#&#8203;11086](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11086))
    - `confmap`: Remove stable `confmap.strictlyTypedInput` gate
    ([#&#8203;11008](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11008))
    - `confmap`: Removes stable `confmap.unifyEnvVarExpansion` feature gate.
    ([#&#8203;11007](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11007))
    - `ballastextension`: Removes the deprecated ballastextension
    ([#&#8203;10671](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10671))
    - `service`: Removes stable `service.disableOpenCensusBridge` feature
    gate
    ([#&#8203;11009](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11009))
    
    ##### 🚩 Deprecations 🚩
    
    - `processorhelper`: These funcs are not used anywhere, marking them
    deprecated.
    ([#&#8203;11083](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11083))
    
    ##### 🚀 New components 🚀
    
    - `extension/experimental/storage`: Move
    `extension/experimental/storage` into a separate module
    ([#&#8203;11022](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11022))
    
    ##### 💡 Enhancements 💡
    
    - `configtelemetry`: Add guidelines for each level of component
    telemetry
    ([#&#8203;10286](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10286))
    
    - `service`: move `useOtelWithSDKConfigurationForInternalTelemetry` gate
    to beta
    ([#&#8203;11091](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11091))
    
    - `service`: implement a no-op tracer provider that doesn't propagate
    the context
    ([#&#8203;11026](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11026))
    The no-op tracer provider supported by the SDK incurs a memory cost of
    propagating the context no matter
    what. This is not needed if tracing is not enabled in the Collector.
    This implementation of the no-op tracer
    provider removes the need to allocate memory when tracing is disabled.
    
    - `envprovider`: Mark module as stable
    ([#&#8203;10982](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10982))
    
    - `fileprovider`: Mark module as stable
    ([#&#8203;10983](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10983))
    
    - `processor`: Add incoming and outgoing counts for processors using
    processorhelper.
    ([#&#8203;10910](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10910))
    Any processor using the processorhelper package (this is most
    processors) will automatically report
        incoming and outgoing item counts. The new metrics are:
        -   otelcol_processor_incoming_spans
        -   otelcol_processor_outgoing_spans
        -   otelcol_processor_incoming_metric_points
        -   otelcol_processor_outgoing_metric_points
        -   otelcol_processor_incoming_log_records
        -   otelcol_processor_outgoing_log_records
    
    ##### 🧰 Bug fixes 🧰
    
    - `configgrpc`: Change the value of max_recv_msg_size_mib from uint64 to
    int to avoid a case where misconfiguration caused an integer overflow.
    ([#&#8203;10948](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10948))
    - `exporterqueue`: Fix a bug in persistent queue that Offer can becomes
    deadlocked when queue is almost full
    ([#&#8203;11015](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11015))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOC41OS4yIiwidXBkYXRlZEluVmVyIjoiMzguNTkuMiIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jeS1tYWpvci11cGRhdGUiXX0=-->
    
    ---------
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
