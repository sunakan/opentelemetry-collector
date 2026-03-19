commit d9dbfbcd92fc984c8d56e45bdc81f302668ee052
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue May 21 09:41:17 2024 -0700

    fix(deps): update all go.opentelemetry.io/collector packages to v0.101.0 (#10193)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [go.opentelemetry.io/collector/exporter/otlpexporter](https://togithub.com/open-telemetry/opentelemetry-collector)
    | `v0.100.0` -> `v0.101.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlpexporter/v0.101.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlpexporter/v0.101.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlpexporter/v0.100.0/v0.101.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlpexporter/v0.100.0/v0.101.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/collector/exporter/otlphttpexporter](https://togithub.com/open-telemetry/opentelemetry-collector)
    | `v0.100.0` -> `v0.101.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlphttpexporter/v0.101.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlphttpexporter/v0.101.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlphttpexporter/v0.100.0/v0.101.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fexporter%2fotlphttpexporter/v0.100.0/v0.101.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/collector/receiver/otlpreceiver](https://togithub.com/open-telemetry/opentelemetry-collector)
    | `v0.100.0` -> `v0.101.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2freceiver%2fotlpreceiver/v0.101.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fcollector%2freceiver%2fotlpreceiver/v0.101.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fcollector%2freceiver%2fotlpreceiver/v0.100.0/v0.101.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2freceiver%2fotlpreceiver/v0.100.0/v0.101.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v0.101.0`](https://togithub.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v180v01010)
    
    [Compare
    Source](https://togithub.com/open-telemetry/opentelemetry-collector/compare/v0.100.0...v0.101.0)
    
    ##### 💡 Enhancements 💡
    
    - `mdatagen`: generate documentation for internal telemetry
    ([#&#8203;10170](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10170))
    
    - `mdatagen`: add ability to use metadata.yaml to automatically generate
    instruments for components
    ([#&#8203;10054](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10054))
        The `telemetry` section in metadata.yaml is used to generate
        instruments for components to measure telemetry about themselves.
    
    - `confmap`: Allow Converters to write logs during startup
    ([#&#8203;10135](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10135))
    
    - `otelcol`: Enable logging during configuration resolution
    ([#&#8203;10056](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10056))
    
    ##### 🧰 Bug fixes 🧰
    
    - `mdatagen`: Run package tests when goleak is skipped
    ([#&#8203;10125](https://togithub.com/open-telemetry/opentelemetry-collector/issues/10125))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4zNjguMTAiLCJ1cGRhdGVkSW5WZXIiOiIzNy4zNjguMTAiLCJ0YXJnZXRCcmFuY2giOiJtYWluIiwibGFiZWxzIjpbImRlcGVuZGVuY2llcyIsInJlbm92YXRlYm90Il19-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
