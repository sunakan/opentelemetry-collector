commit f5e279a9f324d1d08714087fbc0bee08ecff309e
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jun 11 06:19:22 2024 -0700

    Update All go.opentelemetry.io/collector packages to v0.102.1 (#10381)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [go.opentelemetry.io/collector/exporter/otlpexporter](https://togithub.com/open-telemetry/opentelemetry-collector)
    | `v0.102.0` -> `v0.102.1` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlpexporter/v0.102.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlpexporter/v0.102.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlpexporter/v0.102.0/v0.102.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlpexporter/v0.102.0/v0.102.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/collector/exporter/otlphttpexporter](https://togithub.com/open-telemetry/opentelemetry-collector)
    | `v0.102.0` -> `v0.102.1` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlphttpexporter/v0.102.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlphttpexporter/v0.102.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlphttpexporter/v0.102.0/v0.102.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlphttpexporter/v0.102.0/v0.102.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/collector/receiver/otlpreceiver](https://togithub.com/open-telemetry/opentelemetry-collector)
    | `v0.102.0` -> `v0.102.1` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2freceiver%2fotlpreceiver/v0.102.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2freceiver%2fotlpreceiver/v0.102.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2freceiver%2fotlpreceiver/v0.102.0/v0.102.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2freceiver%2fotlpreceiver/v0.102.0/v0.102.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v0.102.1`](https://togithub.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v01021)
    
    [Compare
    Source](https://togithub.com/open-telemetry/opentelemetry-collector/compare/v0.102.0...v0.102.1)
    
    **This release addresses
    [GHSA-c74f-6mfw-mm4v](https://togithub.com/open-telemetry/opentelemetry-collector/security/advisories/GHSA-c74f-6mfw-mm4v)
    for `configgrpc`.**
    
    ##### 🧰 Bug fixes 🧰
    
    - `configrpc`: Use own compressors for zstd. Before this change, the
    zstd compressor we used didn't respect the max message size. This
    addresses
    [GHSA-c74f-6mfw-mm4v](https://togithub.com/open-telemetry/opentelemetry-collector/security/advisories/GHSA-c74f-6mfw-mm4v)
    for `configgrpc`
    ([#&#8203;10323](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10323))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4zOTMuMCIsInVwZGF0ZWRJblZlciI6IjM3LjM5My4wIiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
