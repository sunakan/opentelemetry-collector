commit d055ea2d331df49fcc697a11296e85d078a01181
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Feb 24 10:14:52 2026 +0100

    chore(deps): update github-actions deps (#14628)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    | [CodSpeedHQ/action](https://redirect.github.com/CodSpeedHQ/action) |
    action | minor | `v4.10.6` → `v4.11.0` |
    |
    [github/codeql-action](https://redirect.github.com/github/codeql-action)
    | action | patch | `v4.32.3` → `v4.32.4` |
    |
    [streetsidesoftware/cspell-action](https://redirect.github.com/streetsidesoftware/cspell-action)
    | action | minor | `v8.2.0` → `v8.3.0` |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>CodSpeedHQ/action (CodSpeedHQ/action)</summary>
    
    ###
    [`v4.11.0`](https://redirect.github.com/CodSpeedHQ/action/releases/tag/v4.11.0)
    
    [Compare
    Source](https://redirect.github.com/CodSpeedHQ/action/compare/v4.10.6...v4.11.0)
    
    #### Release Notes
    
    ##### <!-- 0 -->🚀 Features
    
    - feat: add SHA256 hash verification for the installer script by
    [@&#8203;art049](https://redirect.github.com/art049) in
    [#&#8203;189](https://redirect.github.com/CodSpeedHQ/action/pull/189)
    - Collect debug info by pid by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;240](https://redirect.github.com/CodSpeedHQ/runner/pull/240)
    - Skip tests requiring sudo if `GITHUB_ACTIONS` is not set by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Deduplicate symbol maps, unwind\_data and debug info by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Use bench\_pids filters when harvesting symbols from perf file by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Add new fields to perf metadata by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;246](https://redirect.github.com/CodSpeedHQ/runner/pull/246)
    - Always try to attach to libc-compatible API by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Support tcmalloc by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Support more standard allocation APIs by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Add tracegrind support as an alternative simulation tool by
    [@&#8203;art049](https://redirect.github.com/art049) in
    [#&#8203;236](https://redirect.github.com/CodSpeedHQ/runner/pull/236)
    
    ##### <!-- 1 -->🐛 Bug Fixes
    
    - Re-add perf map colection removed by mistake by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;251](https://redirect.github.com/CodSpeedHQ/runner/pull/251)
    
    ##### <!-- 2 -->🏗️ Refactor
    
    - Use common lib paths for all allocators by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    
    ##### <!-- 7 -->⚙️ Internals
    
    - chore: bump runner version to 4.11.0 by
    [@&#8203;github-actions](https://redirect.github.com/github-actions)\[bot]
    in [#&#8203;190](https://redirect.github.com/CodSpeedHQ/action/pull/190)
    - Bump exec-harness version
    - Remove outdated allocator check by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;241](https://redirect.github.com/CodSpeedHQ/runner/pull/241)
    - Add tcmalloc test by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    
    #### Install codspeed-runner 4.11.0
    
    ##### Install prebuilt binaries via shell script
    
    ```sh
    curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/codspeed/releases/download/v4.11.0/codspeed-runner-installer.sh | sh
    ```
    
    #### Download codspeed-runner 4.11.0
    
    | File | Platform | Checksum |
    |
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    | ---------------- |
    -------------------------------------------------------------------------------------------------------------------------------------
    |
    |
    [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.11.0/codspeed-runner-aarch64-unknown-linux-musl.tar.gz)
    | ARM64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.11.0/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256)
    |
    |
    [codspeed-runner-x86\_64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.11.0/codspeed-runner-x86_64-unknown-linux-musl.tar.gz)
    | x64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.11.0/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256)
    |
    
    **Full Runner Changelog**:
    <https://github.com/CodSpeedHQ/codspeed/blob/main/CHANGELOG.md>
    
    **Full Changelog**:
    <https://github.com/CodSpeedHQ/action/compare/v4.10.6...v4.11.0>
    
    </details>
    
    <details>
    <summary>github/codeql-action (github/codeql-action)</summary>
    
    ###
    [`v4.32.4`](https://redirect.github.com/github/codeql-action/releases/tag/v4.32.4)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v4.32.3...v4.32.4)
    
    - Update default CodeQL bundle version to
    [2.24.2](https://redirect.github.com/github/codeql-action/releases/tag/codeql-bundle-v2.24.2).
    [#&#8203;3493](https://redirect.github.com/github/codeql-action/pull/3493)
    - Added an experimental change which improves how certificates are
    generated for the authentication proxy that is used by the CodeQL Action
    in Default Setup when [private package registries are
    configured](https://docs.github.com/en/code-security/how-tos/secure-at-scale/configure-organization-security/manage-usage-and-access/giving-org-access-private-registries).
    This is expected to generate more widely compatible certificates and
    should have no impact on analyses which are working correctly already.
    We expect to roll this change out to everyone in February.
    [#&#8203;3473](https://redirect.github.com/github/codeql-action/pull/3473)
    - When the CodeQL Action is run [with debugging enabled in Default
    Setup](https://docs.github.com/en/code-security/how-tos/scan-code-for-vulnerabilities/troubleshooting/troubleshooting-analysis-errors/logs-not-detailed-enough#creating-codeql-debugging-artifacts-for-codeql-default-setup)
    and [private package registries are
    configured](https://docs.github.com/en/code-security/how-tos/secure-at-scale/configure-organization-security/manage-usage-and-access/giving-org-access-private-registries),
    the "Setup proxy for registries" step will output additional diagnostic
    information that can be used for troubleshooting.
    [#&#8203;3486](https://redirect.github.com/github/codeql-action/pull/3486)
    - Added a setting which allows the CodeQL Action to enable network
    debugging for Java programs. This will help GitHub staff support
    customers with troubleshooting issues in GitHub-managed CodeQL
    workflows, such as Default Setup. This setting can only be enabled by
    GitHub staff.
    [#&#8203;3485](https://redirect.github.com/github/codeql-action/pull/3485)
    - Added a setting which enables GitHub-managed workflows, such as
    Default Setup, to use a [nightly CodeQL CLI
    release](https://redirect.github.com/dsp-testing/codeql-cli-nightlies)
    instead of the latest, stable release that is used by default. This will
    help GitHub staff support customers whose analyses for a given
    repository or organization require early access to a change in an
    upcoming CodeQL CLI release. This setting can only be enabled by GitHub
    staff.
    [#&#8203;3484](https://redirect.github.com/github/codeql-action/pull/3484)
    
    </details>
    
    <details>
    <summary>streetsidesoftware/cspell-action
    (streetsidesoftware/cspell-action)</summary>
    
    ###
    [`v8.3.0`](https://redirect.github.com/streetsidesoftware/cspell-action/releases/tag/v8.3.0)
    
    [Compare
    Source](https://redirect.github.com/streetsidesoftware/cspell-action/compare/v8.2.0...v8.3.0)
    
    ##### Features
    
    - Update CSpell version (9.7.0)
    ([#&#8203;2623](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2623))
    ([c133e41](https://redirect.github.com/streetsidesoftware/cspell-action/commit/c133e41e408e4cf02c7d3d86b98e5e16caccd3f0))
    
    ##### Updates and Bug Fixes
    
    - drop dependency upon `@actions/github` to get the context.
    ([#&#8203;2594](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2594))
    ([8e0bc6f](https://redirect.github.com/streetsidesoftware/cspell-action/commit/8e0bc6fefa607865d06289ab27980236bbc75961))
    - remove direct dependency upon
    [@&#8203;actions/core](https://redirect.github.com/actions/core)
    ([#&#8203;2590](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2590))
    ([f599087](https://redirect.github.com/streetsidesoftware/cspell-action/commit/f59908714ba4a0d5d12a8a4e9c8684d2146d2685))
    - Switch action to ESM using tsdown
    ([#&#8203;2595](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2595))
    ([382af06](https://redirect.github.com/streetsidesoftware/cspell-action/commit/382af060a7ef0fbd94d2993b099ddc3e45cca481))
    - Update CSpell version (9.6.4)
    ([#&#8203;2598](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2598))
    ([c7a5b0d](https://redirect.github.com/streetsidesoftware/cspell-action/commit/c7a5b0db3db00a0a474d7a733e782447af7842ab))
    - Update Dictionaries and Dependencies
    ([#&#8203;2610](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2610))
    ([0b7f004](https://redirect.github.com/streetsidesoftware/cspell-action/commit/0b7f004e09e2b2dff1f08551803d79df7fd56333))
    - Update Dictionaries and Dependencies
    ([#&#8203;2613](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2613))
    ([b8b230a](https://redirect.github.com/streetsidesoftware/cspell-action/commit/b8b230ace7aa1f15bc2d786d79c7843ad80d0cb1))
    - Update Dictionaries and Dependencies
    ([#&#8203;2624](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2624))
    ([445d7c5](https://redirect.github.com/streetsidesoftware/cspell-action/commit/445d7c5ca72c2768ddcf24f3236da285340b9b88))
    - Workflow Bot -- Update ALL Dependencies (main)
    ([#&#8203;2597](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2597))
    ([405b6ec](https://redirect.github.com/streetsidesoftware/cspell-action/commit/405b6ec7ce9e24e6f3ae95dfe64f5bbb53876b12))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0My4yNi41IiwidXBkYXRlZEluVmVyIjoiNDMuMjYuNSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
