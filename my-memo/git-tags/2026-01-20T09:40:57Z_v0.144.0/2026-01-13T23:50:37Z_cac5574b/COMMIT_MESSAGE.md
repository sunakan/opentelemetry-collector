commit cac5574b46c0c3ffc2b3526852d74bb1f2751eed
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jan 13 15:50:37 2026 -0800

    Update github-actions deps (#14416)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    | [CodSpeedHQ/action](https://redirect.github.com/CodSpeedHQ/action) |
    action | minor | `v4.5.2` → `v4.7.0` |
    | [actions/setup-go](https://redirect.github.com/actions/setup-go) |
    action | minor | `v6.1.0` → `v6.2.0` |
    | [actions/setup-go](https://redirect.github.com/actions/setup-go)
    ([changelog](https://redirect.github.com/actions/setup-go/compare/4dc6199c7b1a012772edbd06daecab0f50c9053c..7a3fe6cf4cb3a834922a1244abfce67bcef6a0c5))
    | action | digest | `4dc6199` → `7a3fe6c` |
    | [anchore/sbom-action](https://redirect.github.com/anchore/sbom-action)
    | action | patch | `v0.21.0` → `v0.21.1` |
    |
    [github/codeql-action](https://redirect.github.com/github/codeql-action)
    | action | patch | `v4.31.9` → `v4.31.10` |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>CodSpeedHQ/action (CodSpeedHQ/action)</summary>
    
    ###
    [`v4.7.0`](https://redirect.github.com/CodSpeedHQ/action/releases/tag/v4.7.0)
    
    [Compare
    Source](https://redirect.github.com/CodSpeedHQ/action/compare/v4.5.2...v4.7.0)
    
    #### Release Notes
    
    ##### <!-- 0 -->🚀 Features
    
    - Check for perf compression and enable multi-events conditionally by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Enable perf data compression by
    [@&#8203;art049](https://redirect.github.com/art049)
    - Add more events to perf monitoring by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Add zstd compression support by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Add l2d cache events to perf command by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;188](https://redirect.github.com/CodSpeedHQ/runner/pull/188)
    
    ##### <!-- 1 -->🐛 Bug Fixes
    
    - Do not cat stdout from command to pipe.data by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;182](https://redirect.github.com/CodSpeedHQ/runner/pull/182)
    - Drain events arriving after process terminated by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Support non-x86 libc paths by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;183](https://redirect.github.com/CodSpeedHQ/runner/pull/183)
    
    ##### <!-- 7 -->⚙️ Internals
    
    - Add instructions event, and use runner\_shared for monitored events by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;154](https://redirect.github.com/CodSpeedHQ/runner/pull/154)
    - Bump memtrack version by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;187](https://redirect.github.com/CodSpeedHQ/runner/pull/187)
    - Prevent gh release edit from automatically setting release as latest
    by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;186](https://redirect.github.com/CodSpeedHQ/runner/pull/186)
    - Add memtrack serialization benchmark by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;184](https://redirect.github.com/CodSpeedHQ/runner/pull/184)
    
    #### Install codspeed-runner 4.7.0
    
    ##### Install prebuilt binaries via shell script
    
    ```sh
    curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/runner/releases/download/v4.7.0/codspeed-runner-installer.sh | sh
    ```
    
    #### Download codspeed-runner 4.7.0
    
    | File | Platform | Checksum |
    |
    --------------------------------------------------------------------------------------------------------------------------------------------------------------------
    | ---------------- |
    ----------------------------------------------------------------------------------------------------------------------------------
    |
    |
    [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.7.0/codspeed-runner-aarch64-unknown-linux-musl.tar.gz)
    | ARM64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.7.0/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256)
    |
    |
    [codspeed-runner-x86\_64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.7.0/codspeed-runner-x86_64-unknown-linux-musl.tar.gz)
    | x64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.7.0/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256)
    |
    
    **Full Runner Changelog**:
    <https://github.com/CodSpeedHQ/runner/blob/main/CHANGELOG.md>
    
    **Full Changelog**:
    <https://github.com/CodSpeedHQ/action/compare/v4.5.2...v4.7.0>
    
    </details>
    
    <details>
    <summary>actions/setup-go (actions/setup-go)</summary>
    
    ###
    [`v6.2.0`](https://redirect.github.com/actions/setup-go/compare/v6.1.0...v6.2.0)
    
    [Compare
    Source](https://redirect.github.com/actions/setup-go/compare/v6.1.0...v6.2.0)
    
    </details>
    
    <details>
    <summary>anchore/sbom-action (anchore/sbom-action)</summary>
    
    ###
    [`v0.21.1`](https://redirect.github.com/anchore/sbom-action/releases/tag/v0.21.1)
    
    [Compare
    Source](https://redirect.github.com/anchore/sbom-action/compare/v0.21.0...v0.21.1)
    
    ##### Changes in v0.21.1
    
    - chore(deps): update Syft to v1.40.0
    ([#&#8203;562](https://redirect.github.com/anchore/sbom-action/issues/562))
    \[\[[anchore-actions-token-generator\[bot\]](https://redirect.github.com/apps/anchore-actions-token-generator)]\(<https://github.com/>[anchore-actions-token-generator\[bot\]](https://redirect.github.com/apps/anchore-actions-token-generator))]
    
    </details>
    
    <details>
    <summary>github/codeql-action (github/codeql-action)</summary>
    
    ###
    [`v4.31.10`](https://redirect.github.com/github/codeql-action/compare/v4.31.9...v4.31.10)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v4.31.9...v4.31.10)
    
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
    [config
    help](https://redirect.github.com/renovatebot/renovate/discussions) if
    that's undesired.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0Mi43NC41IiwidXBkYXRlZEluVmVyIjoiNDIuNzQuNSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
