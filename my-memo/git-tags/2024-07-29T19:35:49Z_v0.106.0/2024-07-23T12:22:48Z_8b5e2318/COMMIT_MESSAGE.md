commit 8b5e2318374dfcc188d7b77d727bb200f6d1b42f
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jul 23 14:22:48 2024 +0200

    Update All go.opentelemetry.io/collector packages to v0.105.0 (#10700)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [go.opentelemetry.io/collector/component](https://togithub.com/open-telemetry/opentelemetry-collector)
    | `v0.104.0` -> `v0.105.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fcomponent/v0.105.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fcomponent/v0.105.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fcomponent/v0.104.0/v0.105.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fcomponent/v0.104.0/v0.105.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/collector/consumer/consumertest](https://togithub.com/open-telemetry/opentelemetry-collector)
    | `v0.0.0-00010101000000-000000000000` -> `v0.105.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fconsumer%2fconsumertest/v0.105.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fconsumer%2fconsumertest/v0.105.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fconsumer%2fconsumertest/v0.0.0-00010101000000-000000000000/v0.105.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fconsumer%2fconsumertest/v0.0.0-00010101000000-000000000000/v0.105.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-collector
    (go.opentelemetry.io/collector/component)</summary>
    
    ###
    [`v0.105.0`](https://togithub.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1120v01050)
    
    [Compare
    Source](https://togithub.com/open-telemetry/opentelemetry-collector/compare/v0.104.0...v0.105.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `service`: add `service.disableOpenCensusBridge` feature gate which is
    enabled by default to remove the dependency on OpenCensus
    ([#&#8203;10414](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10414))
    - `confmap`: Promote `confmap.strictlyTypedInput` feature gate to beta.
    ([#&#8203;10552](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10552))
        This feature gate changes the following:
    - Configurations relying on the implicit type casting behaviors listed
    on
    [#&#8203;9532](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9532)
    will start to fail.
    - Configurations using URI expansion (i.e. `field: ${env:ENV}`) for
    string-typed fields will use the value passed in `ENV` verbatim without
    intermediate type casting.
    
    ##### 💡 Enhancements 💡
    
    - `configtls`: Mark module as stable.
    ([#&#8203;9377](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9377))
    - `confmap`: Remove extra closing parenthesis in sub-config error
    ([#&#8203;10480](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10480))
    - `configgrpc`: Update the default load balancer strategy to round_robin
    ([#&#8203;10319](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10319))
    To restore the behavior that was previously the default, set
    `balancer_name` to `pick_first`.
    - `cmd/builder`: Add go module info the builder generated code.
    ([#&#8203;10570](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10570))
    - `otelcol`: Add go module to components subcommand.
    ([#&#8203;10570](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10570))
    - `confmap`: Add explanation to errors related to
    `confmap.strictlyTypedInput` feature gate.
    ([#&#8203;9532](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9532))
    - `confmap`: Allow using `map[string]any` values in string interpolation
    ([#&#8203;10605](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10605))
    
    ##### 🧰 Bug fixes 🧰
    
    - `builder`: provide context when a module in the config is missing its
    gomod value
    ([#&#8203;10474](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10474))
    - `confmap`: Fixes issue where confmap could not escape `$$` when
    `confmap.unifyEnvVarExpansion` is enabled.
    ([#&#8203;10560](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10560))
    - `mdatagen`: fix generated comp test for extensions and unused imports
    in templates
    ([#&#8203;10477](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10477))
    - `otlpreceiver`: Fixes a bug where the otlp receiver's http response
    was not properly translating grpc error codes to http status codes.
    ([#&#8203;10574](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10574))
    - `exporterhelper`: Fix incorrect deduplication of
    otelcol_exporter_queue_size and otelcol_exporter_queue_capacity metrics
    if multiple exporters are used.
    ([#&#8203;10444](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10444))
    - `service/telemetry`: Add ability to set service.name for spans emitted
    by the Collector
    ([#&#8203;10489](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10489))
    - `internal/localhostgate`: Correctly log info message when
    `component.UseLocalHostAsDefaultHost` is enabled
    ([#&#8203;8510](https://togithub.com/open-telemetry/opentelemetry-collector/issues/8510))
    
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
    
    This PR was generated by [Mend
    Renovate](https://www.mend.io/free-developer-tools/renovate/). View the
    [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy40MzguMCIsInVwZGF0ZWRJblZlciI6IjM3LjQzOC4wIiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
