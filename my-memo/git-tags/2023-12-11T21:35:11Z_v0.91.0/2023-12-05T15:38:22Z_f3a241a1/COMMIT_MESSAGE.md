commit f3a241a14c7d416c7cd7dc097805137ebcc72e18
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Dec 5 07:38:22 2023 -0800

    Update all patch dependencies (#9040)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    |
    [github.com/klauspost/compress](https://togithub.com/klauspost/compress)
    | require | patch | `v1.17.3` -> `v1.17.4` |
    | [github.com/mikefarah/yq/v4](https://togithub.com/mikefarah/yq) |
    require | patch | `v4.40.3` -> `v4.40.4` |
    | [github.com/shirou/gopsutil/v3](https://togithub.com/shirou/gopsutil)
    | require | patch | `v3.23.10` -> `v3.23.11` |
    |
    [go.opentelemetry.io/collector](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/component](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/config/configauth](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/config/configcompression](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/config/configgrpc](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/config/confighttp](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/config/confignet](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/config/configopaque](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/config/configtelemetry](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/config/configtls](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/config/internal](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/confmap](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/connector](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/consumer](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/exporter](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/extension](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/extension/auth](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/extension/zpagesextension](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/processor](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/receiver](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/receiver/otlpreceiver](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/semconv](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    |
    [go.opentelemetry.io/collector/service](https://togithub.com/open-telemetry/opentelemetry-collector)
    | require | patch | `v0.90.0` -> `v0.90.1` |
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>klauspost/compress (github.com/klauspost/compress)</summary>
    
    ###
    [`v1.17.4`](https://togithub.com/klauspost/compress/releases/tag/v1.17.4)
    
    [Compare
    Source](https://togithub.com/klauspost/compress/compare/v1.17.3...v1.17.4)
    
    #### What's Changed
    
    - huff0: Speed up symbol counting by
    [@&#8203;greatroar](https://togithub.com/greatroar) in
    [https://github.com/klauspost/compress/pull/887](https://togithub.com/klauspost/compress/pull/887)
    - huff0: Remove byteReader by
    [@&#8203;greatroar](https://togithub.com/greatroar) in
    [https://github.com/klauspost/compress/pull/886](https://togithub.com/klauspost/compress/pull/886)
    - gzhttp: Allow overriding decompression on transport by
    [@&#8203;klauspost](https://togithub.com/klauspost) in
    [https://github.com/klauspost/compress/pull/892](https://togithub.com/klauspost/compress/pull/892)
    - gzhttp: Clamp compression level by
    [@&#8203;klauspost](https://togithub.com/klauspost) in
    [https://github.com/klauspost/compress/pull/890](https://togithub.com/klauspost/compress/pull/890)
    - gzip: Error out if reserved bits are set by
    [@&#8203;klauspost](https://togithub.com/klauspost) in
    [https://github.com/klauspost/compress/pull/891](https://togithub.com/klauspost/compress/pull/891)
    
    #### New Contributors
    
    - [@&#8203;teikjun](https://togithub.com/teikjun) made their first
    contribution in
    [https://github.com/klauspost/compress/pull/889](https://togithub.com/klauspost/compress/pull/889)
    
    **Full Changelog**:
    https://github.com/klauspost/compress/compare/v1.17.3...v1.17.4
    
    </details>
    
    <details>
    <summary>mikefarah/yq (github.com/mikefarah/yq/v4)</summary>
    
    ###
    [`v4.40.4`](https://togithub.com/mikefarah/yq/compare/v4.40.3...v4.40.4)
    
    [Compare
    Source](https://togithub.com/mikefarah/yq/compare/v4.40.3...v4.40.4)
    
    </details>
    
    <details>
    <summary>shirou/gopsutil (github.com/shirou/gopsutil/v3)</summary>
    
    ###
    [`v3.23.11`](https://togithub.com/shirou/gopsutil/releases/tag/v3.23.11)
    
    [Compare
    Source](https://togithub.com/shirou/gopsutil/compare/v3.23.10...v3.23.11)
    
    <!-- Release notes generated using configuration in .github/release.yml
    at v3.23.11 -->
    
    #### What's Changed
    
    ##### process
    
    - feat: use lsof for net_connections on FreeBSD by
    [@&#8203;wolf31o2](https://togithub.com/wolf31o2) in
    [https://github.com/shirou/gopsutil/pull/1551](https://togithub.com/shirou/gopsutil/pull/1551)
    
    #### New Contributors
    
    - [@&#8203;wolf31o2](https://togithub.com/wolf31o2) made their first
    contribution in
    [https://github.com/shirou/gopsutil/pull/1551](https://togithub.com/shirou/gopsutil/pull/1551)
    
    **Full Changelog**:
    https://github.com/shirou/gopsutil/compare/v3.23.10...v3.23.11
    
    </details>
    
    <details>
    <summary>open-telemetry/opentelemetry-collector
    (go.opentelemetry.io/collector)</summary>
    
    ###
    [`v0.90.1`](https://togithub.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v0901)
    
    [Compare
    Source](https://togithub.com/open-telemetry/opentelemetry-collector/compare/v0.90.0...v0.90.1)
    
    ##### 🧰 Bug fixes 🧰
    
    - `exporterhelper`: Remove noisy log
    ([#&#8203;9017](https://togithub.com/open-telemetry/opentelemetry-collector/issues/9017))
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "on tuesday" (UTC), Automerge - At any
    time (no schedule defined).
    
    🚦 **Automerge**: Disabled by config. Please merge this manually once you
    are satisfied.
    
    ♻ **Rebasing**: Whenever PR becomes conflicted, or you tick the
    rebase/retry checkbox.
    
    👻 **Immortal**: This PR will be recreated if closed unmerged. Get
    [config help](https://togithub.com/renovatebot/renovate/discussions) if
    that's undesired.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR has been generated by [Mend
    Renovate](https://www.mend.io/free-developer-tools/renovate/). View
    repository job log
    [here](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy44MS4zIiwidXBkYXRlZEluVmVyIjoiMzcuODEuMyIsInRhcmdldEJyYW5jaCI6Im1haW4ifQ==-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
