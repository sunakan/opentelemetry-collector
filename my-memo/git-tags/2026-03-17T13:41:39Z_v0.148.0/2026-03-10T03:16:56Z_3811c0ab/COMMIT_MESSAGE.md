commit 3811c0abeb3d7f3d275712215869e1fb28886ff6
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Mar 10 03:16:56 2026 +0000

    chore(deps): update github-actions deps (#14734)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    | [CodSpeedHQ/action](https://redirect.github.com/CodSpeedHQ/action) |
    action | patch | `v4.11.0` → `v4.11.1` |
    | [anchore/sbom-action](https://redirect.github.com/anchore/sbom-action)
    | action | patch | `v0.23.0` → `v0.23.1` |
    |
    [github/codeql-action](https://redirect.github.com/github/codeql-action)
    | action | patch | `v4.32.5` → `v4.32.6` |
    |
    [sigstore/cosign-installer](https://redirect.github.com/sigstore/cosign-installer)
    | action | minor | `v4.0.0` → `v4.1.0` |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the [Dependency
    Dashboard](../issues/8903) for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>CodSpeedHQ/action (CodSpeedHQ/action)</summary>
    
    ###
    [`v4.11.1`](https://redirect.github.com/CodSpeedHQ/action/releases/tag/v4.11.1)
    
    [Compare
    Source](https://redirect.github.com/CodSpeedHQ/action/compare/v4.11.0...v4.11.1)
    
    #### Release Notes
    
    ##### <!-- 1 -->🐛 Bug Fixes
    
    - fix: stop using `curl --fail-with-body` and remove `jq` dependency by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;193](https://redirect.github.com/CodSpeedHQ/action/pull/193)
    
    ##### <!-- 7 -->⚙️ Internals
    
    - chore: bump runner version to 4.11.1 by
    [@&#8203;github-actions](https://redirect.github.com/github-actions)\[bot]
    in [#&#8203;191](https://redirect.github.com/CodSpeedHQ/action/pull/191)
    - Pin all actions
    ([#&#8203;250](https://redirect.github.com/CodSpeedHQ/action/issues/250))
    by [@&#8203;art049](https://redirect.github.com/art049) in
    [#&#8203;250](https://redirect.github.com/CodSpeedHQ/runner/pull/250)
    - Bump nix to 0.31.1
    ([#&#8203;247](https://redirect.github.com/CodSpeedHQ/action/issues/247))
    by [@&#8203;3v1n0](https://redirect.github.com/3v1n0) in
    [#&#8203;247](https://redirect.github.com/CodSpeedHQ/runner/pull/247)
    
    #### Install codspeed-runner 4.11.1
    
    ##### Install prebuilt binaries via shell script
    
    ```sh
    curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/codspeed/releases/download/v4.11.1/codspeed-runner-installer.sh | sh
    ```
    
    #### Download codspeed-runner 4.11.1
    
    | File | Platform | Checksum |
    |
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    | ---------------- |
    -------------------------------------------------------------------------------------------------------------------------------------
    |
    |
    [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.11.1/codspeed-runner-aarch64-unknown-linux-musl.tar.gz)
    | ARM64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.11.1/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256)
    |
    |
    [codspeed-runner-x86\_64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.11.1/codspeed-runner-x86_64-unknown-linux-musl.tar.gz)
    | x64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.11.1/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256)
    |
    
    **Full Runner Changelog**:
    <https://github.com/CodSpeedHQ/codspeed/blob/main/CHANGELOG.md>
    
    #### What's Changed
    
    **Full Changelog**:
    <https://github.com/CodSpeedHQ/action/compare/v4.11.0...v4.11.1>
    
    </details>
    
    <details>
    <summary>anchore/sbom-action (anchore/sbom-action)</summary>
    
    ###
    [`v0.23.1`](https://redirect.github.com/anchore/sbom-action/releases/tag/v0.23.1)
    
    [Compare
    Source](https://redirect.github.com/anchore/sbom-action/compare/v0.23.0...v0.23.1)
    
    #### v0.23.1
    
    #### ⬆️ Dependencies
    
    - chore(deps): update Syft to v1.42.2
    ([#&#8203;607](https://redirect.github.com/anchore/sbom-action/issues/607))
    \[@&#8203;[anchore-actions-token-generator\[bot\]](https://redirect.github.com/apps/anchore-actions-token-generator)]
    - chore(deps): bump fast-xml-parser and all other deps
    ([#&#8203;604](https://redirect.github.com/anchore/sbom-action/issues/604))
    \[@&#8203;[dependabot\[bot\]](https://redirect.github.com/apps/dependabot)]
    
    </details>
    
    <details>
    <summary>github/codeql-action (github/codeql-action)</summary>
    
    ###
    [`v4.32.6`](https://redirect.github.com/github/codeql-action/releases/tag/v4.32.6)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v4.32.5...v4.32.6)
    
    - Update default CodeQL bundle version to
    [2.24.3](https://redirect.github.com/github/codeql-action/releases/tag/codeql-bundle-v2.24.3).
    [#&#8203;3548](https://redirect.github.com/github/codeql-action/pull/3548)
    
    </details>
    
    <details>
    <summary>sigstore/cosign-installer (sigstore/cosign-installer)</summary>
    
    ###
    [`v4.1.0`](https://redirect.github.com/sigstore/cosign-installer/releases/tag/v4.1.0)
    
    [Compare
    Source](https://redirect.github.com/sigstore/cosign-installer/compare/v4.0.0...v4.1.0)
    
    #### What's Changed
    
    We recommend updating as soon as possible as this includes bug fixes for
    Cosign. We also recommend removing `with: cosign-release` and strongly
    discourage using `cosign-release` unless you have a specific reason to
    use an older version of Cosign.
    
    - Bump cosign to 3.0.5 in
    [#&#8203;220](https://redirect.github.com/sigstore/cosign-installer/pull/220)
    - fix: add retry to curl downloads for transient network failures in
    [#&#8203;210](https://redirect.github.com/sigstore/cosign-installer/pull/210)
    
    **Full Changelog**:
    <https://github.com/sigstore/cosign-installer/compare/v4.0.0...v4.1.0>
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0My41OS4wIiwidXBkYXRlZEluVmVyIjoiNDMuNTkuMCIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
