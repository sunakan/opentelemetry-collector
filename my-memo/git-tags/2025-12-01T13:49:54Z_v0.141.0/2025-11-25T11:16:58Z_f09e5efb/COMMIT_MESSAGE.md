commit f09e5efb28b183e16127df1fedbd22b7d73ae22b
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Nov 25 12:16:58 2025 +0100

    chore(deps): update github-actions deps (#14209)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    | [CodSpeedHQ/action](https://redirect.github.com/CodSpeedHQ/action) |
    action | minor | `v4.3.4` -> `v4.4.1` |
    | [actions/checkout](https://redirect.github.com/actions/checkout) |
    action | patch | `v5.0.0` -> `v5.0.1` |
    |
    [actions/create-github-app-token](https://redirect.github.com/actions/create-github-app-token)
    | action | minor | `v2.1.4` -> `v2.2.0` |
    | [actions/setup-go](https://redirect.github.com/actions/setup-go) |
    action | minor | `v6.0.0` -> `v6.1.0` |
    | [actions/setup-go](https://redirect.github.com/actions/setup-go) |
    action | digest | `4469467` -> `4dc6199` |
    |
    [github/codeql-action](https://redirect.github.com/github/codeql-action)
    | action | patch | `v4.31.4` -> `v4.31.5` |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>CodSpeedHQ/action (CodSpeedHQ/action)</summary>
    
    ###
    [`v4.4.1`](https://redirect.github.com/CodSpeedHQ/action/releases/tag/v4.4.1)
    
    [Compare
    Source](https://redirect.github.com/CodSpeedHQ/action/compare/v4.4.0...v4.4.1)
    
    #### Release Notes
    
    ##### <!-- 0 -->🚀 Features
    
    - Display oidc as announcement by
    [@&#8203;fargito](https://redirect.github.com/fargito)
    - Add --allow-empty run option by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;160](https://redirect.github.com/CodSpeedHQ/runner/pull/160)
    
    ##### <!-- 1 -->🐛 Bug Fixes
    
    - Do not espace trailing newlines in logger by
    [@&#8203;fargito](https://redirect.github.com/fargito)
    - Make multiline logs appear correctly in summary by
    [@&#8203;fargito](https://redirect.github.com/fargito) in
    [#&#8203;162](https://redirect.github.com/CodSpeedHQ/runner/pull/162)
    - Request OIDC token just before upload by
    [@&#8203;fargito](https://redirect.github.com/fargito)
    - Update docs links to oidc by
    [@&#8203;fargito](https://redirect.github.com/fargito) in
    [#&#8203;159](https://redirect.github.com/CodSpeedHQ/runner/pull/159)
    
    ##### <!-- 7 -->⚙️ Internals
    
    - feat: make use of allow-empty in the ci of this action by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;158](https://redirect.github.com/CodSpeedHQ/action/pull/158)
    - chore: bump runner version to 4.4.1 by
    [@&#8203;github-actions](https://redirect.github.com/github-actions)\[bot]
    in [#&#8203;159](https://redirect.github.com/CodSpeedHQ/action/pull/159)
    
    #### Install codspeed-runner 4.4.1
    
    ##### Install prebuilt binaries via shell script
    
    ```sh
    curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/runner/releases/download/v4.4.1/codspeed-runner-installer.sh | sh
    ```
    
    #### Download codspeed-runner 4.4.1
    
    | File | Platform | Checksum |
    |
    --------------------------------------------------------------------------------------------------------------------------------------------------------------------
    | ---------------- |
    ----------------------------------------------------------------------------------------------------------------------------------
    |
    |
    [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.4.1/codspeed-runner-aarch64-unknown-linux-musl.tar.gz)
    | ARM64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.4.1/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256)
    |
    |
    [codspeed-runner-x86\_64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.4.1/codspeed-runner-x86_64-unknown-linux-musl.tar.gz)
    | x64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.4.1/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256)
    |
    
    **Full Runner Changelog**:
    <https://github.com/CodSpeedHQ/runner/blob/main/CHANGELOG.md>
    
    **Full Changelog**:
    <https://github.com/CodSpeedHQ/action/compare/v4.4.0...v4.4.1>
    
    ###
    [`v4.4.0`](https://redirect.github.com/CodSpeedHQ/action/releases/tag/v4.4.0)
    
    [Compare
    Source](https://redirect.github.com/CodSpeedHQ/action/compare/v4.3.4...v4.4.0)
    
    #### Release Notes
    
    ##### <!-- 0 -->🚀 Features
    
    - Add support for oidc token authentication by
    [@&#8203;fargito](https://redirect.github.com/fargito) in
    [#&#8203;156](https://redirect.github.com/CodSpeedHQ/runner/pull/156)
    - You can now use OIDC to authenticate your CodSpeed workflow and remove
    `CODSPEED_TOKEN` from your repositories secret! Learn more in the
    dedicated [changelog
    entry](https://codspeed.io/changelog/2025-11-19-simpler-authentication-with-oidc)
    - Accept simulation as runner mode by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;152](https://redirect.github.com/CodSpeedHQ/runner/pull/152)
    - Add a comment explaining why we do not check for emptiness in valgrind
    teardown by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;157](https://redirect.github.com/CodSpeedHQ/runner/pull/157)
    - Validate walltime results before uploading by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Import walltime\_results from monorepo by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Accept both simulation and instrumentation as a mode input by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;155](https://redirect.github.com/CodSpeedHQ/action/pull/155)
    
    ##### <!-- 1 -->🐛 Bug Fixes
    
    - Dont start perf unless it's not already started by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;158](https://redirect.github.com/CodSpeedHQ/runner/pull/158)
    - Use a line buffer when reading stdout/stderr streams by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    
    ##### <!-- 4 --> 📚 Documentation
    
    - docs: recommend OpenID Connect instead of static token by
    [@&#8203;fargito](https://redirect.github.com/fargito) in
    [#&#8203;156](https://redirect.github.com/CodSpeedHQ/action/pull/156)
    
    ##### <!-- 7 -->⚙️ Internals
    
    - chore: bump runner version to 4.4.0 by
    [@&#8203;github-actions](https://redirect.github.com/github-actions)\[bot]
    in [#&#8203;157](https://redirect.github.com/CodSpeedHQ/action/pull/157)
    
    #### Install codspeed-runner 4.4.0
    
    ##### Install prebuilt binaries via shell script
    
    ```sh
    curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/runner/releases/download/v4.4.0/codspeed-runner-installer.sh | sh
    ```
    
    #### Download codspeed-runner 4.4.0
    
    | File | Platform | Checksum |
    |
    --------------------------------------------------------------------------------------------------------------------------------------------------------------------
    | ---------------- |
    ----------------------------------------------------------------------------------------------------------------------------------
    |
    |
    [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.4.0/codspeed-runner-aarch64-unknown-linux-musl.tar.gz)
    | ARM64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.4.0/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256)
    |
    |
    [codspeed-runner-x86\_64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.4.0/codspeed-runner-x86_64-unknown-linux-musl.tar.gz)
    | x64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.4.0/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256)
    |
    
    **Full Runner Changelog**:
    <https://github.com/CodSpeedHQ/runner/blob/main/CHANGELOG.md>
    
    **Full Changelog**:
    <https://github.com/CodSpeedHQ/action/compare/v4.3.4...v4.4.0>
    
    </details>
    
    <details>
    <summary>actions/checkout (actions/checkout)</summary>
    
    ###
    [`v5.0.1`](https://redirect.github.com/actions/checkout/releases/tag/v5.0.1)
    
    [Compare
    Source](https://redirect.github.com/actions/checkout/compare/v5.0.0...v5.0.1)
    
    ##### What's Changed
    
    - Port v6 cleanup to v5 by
    [@&#8203;ericsciple](https://redirect.github.com/ericsciple) in
    [#&#8203;2301](https://redirect.github.com/actions/checkout/pull/2301)
    
    **Full Changelog**:
    <https://github.com/actions/checkout/compare/v5...v5.0.1>
    
    </details>
    
    <details>
    <summary>actions/create-github-app-token
    (actions/create-github-app-token)</summary>
    
    ###
    [`v2.2.0`](https://redirect.github.com/actions/create-github-app-token/releases/tag/v2.2.0)
    
    [Compare
    Source](https://redirect.github.com/actions/create-github-app-token/compare/v2.1.4...v2.2.0)
    
    ##### Bug Fixes
    
    - **deps:** bump glob from 10.4.5 to 10.5.0
    ([#&#8203;305](https://redirect.github.com/actions/create-github-app-token/issues/305))
    ([5480f43](https://redirect.github.com/actions/create-github-app-token/commit/5480f4325a18c025ee16d7e081413854624e9edc))
    - **deps:** bump p-retry from 6.2.1 to 7.1.0
    ([#&#8203;294](https://redirect.github.com/actions/create-github-app-token/issues/294))
    ([dce3be8](https://redirect.github.com/actions/create-github-app-token/commit/dce3be8b284f45e65caed11a610e2bef738d15b4))
    - **deps:** bump the production-dependencies group with 2 updates
    ([#&#8203;292](https://redirect.github.com/actions/create-github-app-token/issues/292))
    ([55e2a4b](https://redirect.github.com/actions/create-github-app-token/commit/55e2a4b2ccaaa8364303e6ab9f77e31ad02298e5))
    
    ##### Features
    
    - update permission inputs
    ([#&#8203;296](https://redirect.github.com/actions/create-github-app-token/issues/296))
    ([d90aa53](https://redirect.github.com/actions/create-github-app-token/commit/d90aa532332d33f6dc9656fd4491a98441595a37))
    
    </details>
    
    <details>
    <summary>actions/setup-go (actions/setup-go)</summary>
    
    ###
    [`v6.1.0`](https://redirect.github.com/actions/setup-go/releases/tag/v6.1.0)
    
    [Compare
    Source](https://redirect.github.com/actions/setup-go/compare/v6.0.0...v6.1.0)
    
    #### What's Changed
    
    ##### Enhancements
    
    - Fall back to downloading from go.dev/dl instead of
    storage.googleapis.com/golang by
    [@&#8203;nicholasngai](https://redirect.github.com/nicholasngai) in
    [#&#8203;665](https://redirect.github.com/actions/setup-go/pull/665)
    - Add support for .tool-versions file and update workflow by
    [@&#8203;priya-kinthali](https://redirect.github.com/priya-kinthali) in
    [#&#8203;673](https://redirect.github.com/actions/setup-go/pull/673)
    - Add comprehensive breaking changes documentation for v6 by
    [@&#8203;mahabaleshwars](https://redirect.github.com/mahabaleshwars) in
    [#&#8203;674](https://redirect.github.com/actions/setup-go/pull/674)
    
    ##### Dependency updates
    
    - Upgrade eslint-config-prettier from 10.0.1 to 10.1.8 and document
    breaking changes in v6 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [#&#8203;617](https://redirect.github.com/actions/setup-go/pull/617)
    - Upgrade actions/publish-action from 0.3.0 to 0.4.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [#&#8203;641](https://redirect.github.com/actions/setup-go/pull/641)
    - Upgrade semver and
    [@&#8203;types/semver](https://redirect.github.com/types/semver) by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [#&#8203;652](https://redirect.github.com/actions/setup-go/pull/652)
    
    #### New Contributors
    
    - [@&#8203;nicholasngai](https://redirect.github.com/nicholasngai) made
    their first contribution in
    [#&#8203;665](https://redirect.github.com/actions/setup-go/pull/665)
    - [@&#8203;priya-kinthali](https://redirect.github.com/priya-kinthali)
    made their first contribution in
    [#&#8203;673](https://redirect.github.com/actions/setup-go/pull/673)
    - [@&#8203;mahabaleshwars](https://redirect.github.com/mahabaleshwars)
    made their first contribution in
    [#&#8203;674](https://redirect.github.com/actions/setup-go/pull/674)
    
    **Full Changelog**:
    <https://github.com/actions/setup-go/compare/v6...v6.1.0>
    
    </details>
    
    <details>
    <summary>github/codeql-action (github/codeql-action)</summary>
    
    ###
    [`v4.31.5`](https://redirect.github.com/github/codeql-action/releases/tag/v4.31.5)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v4.31.4...v4.31.5)
    
    ##### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    ##### 4.31.5 - 24 Nov 2025
    
    - Update default CodeQL bundle version to 2.23.6.
    [#&#8203;3321](https://redirect.github.com/github/codeql-action/pull/3321)
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v4.31.5/CHANGELOG.md)
    for more information.
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0Mi4xOS41IiwidXBkYXRlZEluVmVyIjoiNDIuMTkuNSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
