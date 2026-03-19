commit 49dabd8a0a703b2669583e727e93f2c9cabbb5e2
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jan 30 08:47:29 2024 -0800

    Update module go.opentelemetry.io/collector to v0.93.0 (#9421)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [go.opentelemetry.io/collector](https://togithub.com/open-telemetry/opentelemetry-collector)
    | `v0.92.0` -> `v0.93.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector/v0.93.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector/v0.93.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector/v0.92.0/v0.93.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector/v0.92.0/v0.93.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-collector
    (go.opentelemetry.io/collector)</summary>
    
    ###
    [`v0.93.0`](https://togithub.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v0930)
    
    [Compare
    Source](https://togithub.com/open-telemetry/opentelemetry-collector/compare/v0.92.0...v0.93.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `exporterhelper`: remove deprecated exporterhelper.RetrySettings and
    exporterhelper.NewDefaultRetrySettings
    ([#&#8203;9256](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9256))
    - `configopaque`: configopaque.String implements `fmt.Stringer` and
    `fmt.GoStringer`, outputting \[REDACTED] when formatted with the %s, %q
    or %#v verbs`(#&#8203;9213)
    This may break applications that rely on the previous behavior of opaque
    strings with`fmt.Sprintf`to e.g. build URLs or headers.
    Explicitly cast the opaque string to a string before using it
    in`fmt.Sprintf\` to restore the previous behavior.
    
    ##### 🚀 New components 🚀
    
    - `extension/memory_limiter`: Introduce a `memory_limiter` extension
    which receivers can use to reject incoming requests when collector
    doesn't have enough memory
    ([#&#8203;8632](https://togithub.com/open-telemetry/opentelemetry-collector/issues/8632))
    The extension has the same configuration interface and behavior as the
    existing `memory_limiter` processor, which potentially can be deprecated
    and removed in the future
    
    ##### 💡 Enhancements 💡
    
    - `configtls`: add `cipher_suites` to configtls.
    ([#&#8203;8105](https://togithub.com/open-telemetry/opentelemetry-collector/issues/8105))
    Users can specify a list of cipher suites to pick from. If left blank, a
    safe default list is used.
    
    - `service`: mark `telemetry.useOtelForInternalMetrics` as stable
    ([#&#8203;816](https://togithub.com/open-telemetry/opentelemetry-collector/issues/816))
    
    - `exporters`: Cleanup log messages for export failures
    ([#&#8203;9219](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9219))
    1. Ensure an error message is logged every time and only once when data
    is dropped/rejected due to export failure.
    2. Update the wording. Specifically, don't use "dropped" term when an
    error is reported back to the pipeline.
    Keep the "dropped" wording for failures happened after the enabled
    queue.
    3. Properly report any error reported by a queue. For example, a
    persistent storage error must be reported as a storage error, not as
    "queue overflow".
    
    ##### 🧰 Bug fixes 🧰
    
    - `configgrpc`: Update dependency to address a potential crash in the
    grpc instrumentation
    ([#&#8203;9296](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9296))
    - `otlpreceiver`: Ensure OTLP receiver handles consume errors correctly
    ([#&#8203;4335](https://togithub.com/open-telemetry/opentelemetry-collector/issues/4335))
    Make sure OTLP receiver returns correct status code and follows the
    receiver contract (gRPC)
    - `zpagesextension`: Remove mention of rpcz page from zpages extension
    ([#&#8203;9328](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9328))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4xNTMuMiIsInVwZGF0ZWRJblZlciI6IjM3LjE1My4yIiwidGFyZ2V0QnJhbmNoIjoibWFpbiJ9-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
