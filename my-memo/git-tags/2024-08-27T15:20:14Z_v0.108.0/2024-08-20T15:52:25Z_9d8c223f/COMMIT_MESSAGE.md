commit 9d8c223f3c63844fdf9bca64105cabde747a2c7e
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Aug 20 08:52:25 2024 -0700

    fix(deps): update module go.opentelemetry.io/collector/client to v1 (#10923)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [go.opentelemetry.io/collector/client](https://togithub.com/open-telemetry/opentelemetry-collector)
    | `v0.107.0` -> `v1.13.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fclient/v1.13.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fclient/v1.13.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fclient/v0.107.0/v1.13.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fclient/v0.107.0/v1.13.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    (go.opentelemetry.io/collector/client)</summary>
    
    ###
    [`v1.13.0`](https://togithub.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1130v01070)
    
    ##### 🛑 Breaking changes 🛑
    
    - `service`: Remove OpenCensus bridge completely, mark feature gate as
    stable.
    ([#&#8203;10414](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10414))
    - `confmap`: Set the `confmap.unifyEnvVarExpansion` feature gate to
    Stable. Expansion of `$FOO` env vars is no longer supported. Use
    `${FOO}` or `${env:FOO}` instead.
    ([#&#8203;10508](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10508))
    
    ##### 💡 Enhancements 💡
    
    - `mdatagen`: export ScopeName in internal/metadata package
    ([#&#8203;10845](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10845))
    This can be used by components that need to set their scope name
    manually. Will save component owners from having to store a variable,
    which may diverge from the scope name used by the component for emitting
    its own telemetry.
    
    - `semconv`: Add v1.26.0 semantic conventions package
    ([#&#8203;10249](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10249),
    [#&#8203;10829](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10829))
    
    - `mdatagen`: Expose a setting on tests::host to set up your own host
    initialization code
    ([#&#8203;10765](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10765))
    Some receivers require a host that has additional capabilities such as
    exposing exporters.
    For those, we can expose a setting that allows them to place a different
    host in the generated code.
    
    - `confmap`: Allow using any YAML structure as a string when loading
    configuration.
    ([#&#8203;10800](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10800))
    Previous to this change, slices could not be used as strings in
    configuration.
    
    - `ocb`: migrate build and release of ocb binaries to
    opentelemetry-collector-releases repository
    ([#&#8203;10710](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10710))
    ocb binaries will now be released under
    open-telemetry/opentelemetry-collector-releases tagged as
    "cmd/builder/vX.XXX.X"
    
    - `semconv`: Add semantic conventions version v1.27.0
    ([#&#8203;10837](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10837))
    
    - `client`: Mark module as stable.
    ([#&#8203;10775](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10775))
    
    ##### 🧰 Bug fixes 🧰
    
    - `configtelemetry`: Add 10s read header timeout on the configtelemetry
    Prometheus HTTP server.
    ([#&#8203;5699](https://togithub.com/open-telemetry/opentelemetry-collector/issues/5699))
    
    - `service`: Allow users to disable the tracer provider via the feature
    gate `service.noopTracerProvider`
    ([#&#8203;10858](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10858))
    The service is returning an instance of a SDK tracer provider regardless
    of whether there were any processors configured causing resources to be
    consumed unnecessarily.
    
    - `processorhelper`: Fix processor metrics not being reported initially
    with 0 values.
    ([#&#8203;10855](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10855))
    
    - `service`: Implement the `temporality_preference` setting for internal
    telemetry exported via OTLP
    ([#&#8203;10745](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10745))
    
    - `configauth`: Fix unmarshaling of authentication in HTTP servers.
    ([#&#8203;10750](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10750))
    
    - `confmap`: If loading an invalid YAML string through a provider, use
    it verbatim instead of erroring out.
    ([#&#8203;10759](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10759))
    This makes the ${env:ENV} syntax closer to how ${ENV} worked before
    unifying syntaxes.
    
    - `component`: Allow component names of up to 1024 characters in length.
    ([#&#8203;10816](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10816))
    
    - `confmap`: Remove original string representation if invalid.
    ([#&#8203;10787](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10787))
    
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
    
    This PR was generated by [Mend
    Renovate](https://www.mend.io/free-developer-tools/renovate/). View the
    [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOC4yNi4xIiwidXBkYXRlZEluVmVyIjoiMzguMjYuMSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jeS1tYWpvci11cGRhdGUiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
