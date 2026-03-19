commit 8ae7aad134d31d7bbb228cf2f1727baf114c2b48
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Apr 23 06:54:30 2024 -0700

    Update module go.opentelemetry.io/collector/exporter/otlpexporter to v0.99.0 (#10022)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [go.opentelemetry.io/collector/exporter/otlpexporter](https://togithub.com/open-telemetry/opentelemetry-collector)
    | `v0.98.0` -> `v0.99.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlpexporter/v0.99.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlpexporter/v0.99.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlpexporter/v0.98.0/v0.99.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlpexporter/v0.98.0/v0.99.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-collector
    (go.opentelemetry.io/collector/exporter/otlpexporter)</summary>
    
    ###
    [`v0.99.0`](https://togithub.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v160v0990)
    
    [Compare
    Source](https://togithub.com/open-telemetry/opentelemetry-collector/compare/v0.98.0...v0.99.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `builder`: Add strict version checking when using the builder. Add the
    temporary flag ` --skip-strict-versioning `for skipping this check.
    ([#&#8203;9896](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9896))
    Strict version checking will error on major and minor version mismatches
    between the `otelcol_version` configured and the builder version or
    versions
    in the go.mod. This check can be temporarily disabled by using the
    `--skip-strict-versioning`
        flag. This flag will be removed in a future minor version.
    
    - `telemetry`: Distributed internal metrics across different levels.
    ([#&#8203;7890](https://togithub.com/open-telemetry/opentelemetry-collector/issues/7890))
        The internal metrics levels are updated along with reported metrics:
    - The default level is changed from `basic` to `normal`, which can be
    overridden with `service::telmetry::metrics::level` configuration.
    - Batch processor metrics are updated to be reported starting from
    `normal` level:
            -   `processor_batch_batch_send_size`
            -   `processor_batch_metadata_cardinality`
            -   `processor_batch_timeout_trigger_send`
            -   `processor_batch_size_trigger_send`
    - GRPC/HTTP server and client metrics are updated to be reported
    starting from `detailed` level:
            -   http.client.\* metrics
            -   http.server.\* metrics
            -   rpc.server.\* metrics
            -   rpc.client.\* metrics
    
    ##### 💡 Enhancements 💡
    
    - `confighttp`: Disable concurrency in zstd compression
    ([#&#8203;8216](https://togithub.com/open-telemetry/opentelemetry-collector/issues/8216))
    
    - `cmd/builder`: Allow configuring `confmap.Provider`s in the builder.
    ([#&#8203;4759](https://togithub.com/open-telemetry/opentelemetry-collector/issues/4759))
        If no providers are specified, the defaults are used.
        The default providers are: env, file, http, https, and yaml.
    
        To configure providers, use the `providers` key in your OCB build
        manifest with a list of Go modules for your providers.
        The modules will work the same as other Collector components.
    
    - `mdatagen`: enable goleak tests by default via mdatagen
    ([#&#8203;9959](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9959))
    
    - `cmd/mdatagen`: support excluding some metrics based on string and
    regexes in resource_attributes
    ([#&#8203;9661](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9661))
    
    - `cmd/mdatagen`: Generate config and factory tests covering their
    requirements.
    ([#&#8203;9940](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9940))
        The tests are moved from cmd/builder.
    
    - `confmap`: Add `ProviderSettings`, `ConverterSettings`,
    `ProviderFactories`, and `ConverterFactories` fields to
    `confmap.ResolverSettings`
    ([#&#8203;9516](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9516))
    This allows configuring providers and converters, which are instantiated
    by `NewResolver` using the given factories.
    
    ##### 🧰 Bug fixes 🧰
    
    - `exporter/otlp`: Allow DNS scheme to be used in endpoint
    ([#&#8203;4274](https://togithub.com/open-telemetry/opentelemetry-collector/issues/4274))
    - `service`: fix record sampler configuration
    ([#&#8203;9968](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9968))
    - `service`: ensure the tracer provider is configured via
    go.opentelemetry.io/contrib/config
    ([#&#8203;9967](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9967))
    - `otlphttpexporter`: Fixes a bug that was preventing the otlp http
    exporter from propagating status.
    ([#&#8203;9892](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9892))
    - `confmap`: Fix decoding negative configuration values into uints
    ([#&#8203;9060](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9060))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4zMTMuMSIsInVwZGF0ZWRJblZlciI6IjM3LjMxMy4xIiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
