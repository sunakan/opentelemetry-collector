commit f724e4984d23c45db1a77041850b34bfd3788d29
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Feb 10 17:58:26 2026 +0000

    chore(deps): update github-actions deps (#14481)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    | [CodSpeedHQ/action](https://redirect.github.com/CodSpeedHQ/action) |
    action | minor | `v4.8.0` → `v4.10.6` |
    | [actions/cache](https://redirect.github.com/actions/cache) | action |
    patch | `v5.0.2` → `v5.0.3` |
    | [actions/checkout](https://redirect.github.com/actions/checkout) |
    action | patch | `v6.0.1` → `v6.0.2` |
    | [actions/checkout](https://redirect.github.com/actions/checkout)
    ([changelog](https://redirect.github.com/actions/checkout/compare/8e8c483db84b4bee98b60c0593521ed34d9990e8..de0fac2e4500dabe0009e67214ff5f5447ce83dd))
    | action | digest | `8e8c483` → `de0fac2` |
    | [anchore/sbom-action](https://redirect.github.com/anchore/sbom-action)
    | action | minor | `v0.21.1` → `v0.22.2` |
    | [fossas/fossa-action](https://redirect.github.com/fossas/fossa-action)
    | action | minor | `v1.7.0` → `v1.8.0` |
    |
    [github/codeql-action](https://redirect.github.com/github/codeql-action)
    | action | minor | `v4.31.10` → `v4.32.2` |
    |
    [streetsidesoftware/cspell-action](https://redirect.github.com/streetsidesoftware/cspell-action)
    | action | minor | `v8.1.2` → `v8.2.0` |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>CodSpeedHQ/action (CodSpeedHQ/action)</summary>
    
    ###
    [`v4.10.6`](https://redirect.github.com/CodSpeedHQ/action/releases/tag/v4.10.6)
    
    [Compare
    Source](https://redirect.github.com/CodSpeedHQ/action/compare/v4.10.5...v4.10.6)
    
    #### Release Notes
    
    ##### <!-- 0 -->🚀 Features
    
    - Use codspeed.io installer for cached and authenticated requests by
    [@&#8203;adriencaccia](https://redirect.github.com/adriencaccia) in
    [#&#8203;187](https://redirect.github.com/CodSpeedHQ/action/pull/187)
    - Force necessary flags for `go run` in introspected go by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;238](https://redirect.github.com/CodSpeedHQ/runner/pull/238)
    - Bump the stack size for python by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Make python generate perf maps in exec-harness analysis by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Harvest python perf maps after parsing perf data by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Allow memory instrument with exec-harness's integration hook by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Use the new instrument-hooks bindings rather than codspeed core by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    
    ##### <!-- 1 -->🐛 Bug Fixes
    
    - Panic if integration doesn't support memory profiling by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;239](https://redirect.github.com/CodSpeedHQ/runner/pull/239)
    - Allow memtrack caching by resetting .cargo permissions by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;237](https://redirect.github.com/CodSpeedHQ/runner/pull/237)
    - Search build directories in sub-folders by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Handle working-directory option by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Improve simulation script support and detect subprocesses by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    
    ##### <!-- 2 -->🏗️ Refactor
    
    - Move common perf-map utility outside of valgrind helpers by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    
    ##### <!-- 7 -->⚙️ Internals
    
    - chore: bump runner version to 4.10.6 by
    [@&#8203;github-actions](https://redirect.github.com/github-actions)\[bot]
    in [#&#8203;188](https://redirect.github.com/CodSpeedHQ/action/pull/188)
    - Bump memtrack version
    - Add debug logs for harvested bench pids by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Update wording in build.rs by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;235](https://redirect.github.com/CodSpeedHQ/runner/pull/235)
    - Use tokio::fs when harvesting perf maps from pids by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Import instrument-hooks bindings from codspeed-rust by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Move small snapshot files out of Git LFS by
    [@&#8203;art049](https://redirect.github.com/art049)
    
    #### Install codspeed-runner 4.10.6
    
    ##### Install prebuilt binaries via shell script
    
    ```sh
    curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/codspeed/releases/download/v4.10.6/codspeed-runner-installer.sh | sh
    ```
    
    #### Download codspeed-runner 4.10.6
    
    | File | Platform | Checksum |
    |
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    | ---------------- |
    -------------------------------------------------------------------------------------------------------------------------------------
    |
    |
    [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.6/codspeed-runner-aarch64-unknown-linux-musl.tar.gz)
    | ARM64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.6/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256)
    |
    |
    [codspeed-runner-x86\_64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.6/codspeed-runner-x86_64-unknown-linux-musl.tar.gz)
    | x64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.6/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256)
    |
    
    **Full Runner Changelog**:
    <https://github.com/CodSpeedHQ/codspeed/blob/main/CHANGELOG.md>
    
    **Full Changelog**:
    <https://github.com/CodSpeedHQ/action/compare/v4.10.5...v4.10.6>
    
    ###
    [`v4.10.5`](https://redirect.github.com/CodSpeedHQ/action/releases/tag/v4.10.5)
    
    [Compare
    Source](https://redirect.github.com/CodSpeedHQ/action/compare/v4.10.4...v4.10.5)
    
    #### Release Notes
    
    ##### <!-- 0 -->🚀 Features
    
    - Support codspeed-node memory profiling by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;228](https://redirect.github.com/CodSpeedHQ/runner/pull/228)
    
    ##### <!-- 1 -->🐛 Bug Fixes
    
    - Check benchmark URIs rather than memtrack events by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;230](https://redirect.github.com/CodSpeedHQ/runner/pull/230)
    - Do not error out if no head report is present after local run by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;233](https://redirect.github.com/CodSpeedHQ/runner/pull/233)
    
    ##### <!-- 7 -->⚙️ Internals
    
    - chore: bump runner version to 4.10.5 by
    [@&#8203;github-actions](https://redirect.github.com/github-actions)\[bot]
    in [#&#8203;186](https://redirect.github.com/CodSpeedHQ/action/pull/186)
    
    ##### Install prebuilt binaries via shell script
    
    ```sh
    curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/codspeed/releases/download/v4.10.5/codspeed-runner-installer.sh | sh
    ```
    
    #### Download codspeed-runner 4.10.5
    
    | File | Platform | Checksum |
    |
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    | ---------------- |
    -------------------------------------------------------------------------------------------------------------------------------------
    |
    |
    [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.5/codspeed-runner-aarch64-unknown-linux-musl.tar.gz)
    | ARM64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.5/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256)
    |
    |
    [codspeed-runner-x86\_64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.5/codspeed-runner-x86_64-unknown-linux-musl.tar.gz)
    | x64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.5/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256)
    |
    
    **Full Runner Changelog**:
    <https://github.com/CodSpeedHQ/codspeed/blob/main/CHANGELOG.md>
    
    **Full Changelog**:
    <https://github.com/CodSpeedHQ/action/compare/v4.10.4...v4.10.5>
    
    ###
    [`v4.10.4`](https://redirect.github.com/CodSpeedHQ/action/releases/tag/v4.10.4)
    
    [Compare
    Source](https://redirect.github.com/CodSpeedHQ/action/compare/v4.10.2...v4.10.4)
    
    ##### Release Notes
    
    ##### <!-- 0 -->🚀 Features
    
    - Check for repository existence before run in local runs by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;229](https://redirect.github.com/CodSpeedHQ/runner/pull/229)
    - Support pytest-codspeed memory profiling by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;225](https://redirect.github.com/CodSpeedHQ/runner/pull/225)
    - Attach to different jemalloc prefixed functions by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Support tracking `libstdc++` by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Track `posix_memalign` by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    
    ##### <!-- 1 -->🐛 Bug Fixes
    
    - Check non-default allocators first by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Reset owernship by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    
    ##### <!-- 2 -->🏗️ Refactor
    
    - Use standard allocation API across allocators by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;212](https://redirect.github.com/CodSpeedHQ/runner/pull/212)
    
    ##### <!-- 7 -->⚙️ Internals
    
    - chore: bump runner version to 4.10.3 by
    [@&#8203;github-actions](https://redirect.github.com/github-actions)\[bot]
    in [#&#8203;184](https://redirect.github.com/CodSpeedHQ/action/pull/184)
    - chore: bump runner version to 4.10.4 by
    [@&#8203;github-actions](https://redirect.github.com/github-actions)\[bot]
    in [#&#8203;185](https://redirect.github.com/CodSpeedHQ/action/pull/185)
    - Use snapshots for c tests by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Only run tests in CI by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Use single thread for tests to avoid opening too many files by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Add cpp allocator test by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Add rust allocator tests by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Allow tracking statically linked allocators in tests by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    
    ##### Install codspeed-runner 4.10.4
    
    ##### Install prebuilt binaries via shell script
    
    ```sh
    curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/codspeed/releases/download/v4.10.4/codspeed-runner-installer.sh | sh
    ```
    
    ##### Download codspeed-runner 4.10.4
    
    | File | Platform | Checksum |
    |
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    | ---------------- |
    -------------------------------------------------------------------------------------------------------------------------------------
    |
    |
    [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.4/codspeed-runner-aarch64-unknown-linux-musl.tar.gz)
    | ARM64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.4/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256)
    |
    |
    [codspeed-runner-x86\_64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.4/codspeed-runner-x86_64-unknown-linux-musl.tar.gz)
    | x64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.4/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256)
    |
    
    **Full Runner Changelog**:
    <https://github.com/CodSpeedHQ/codspeed/blob/main/CHANGELOG.md>
    
    **Full Changelog**:
    <https://github.com/CodSpeedHQ/action/compare/v4.10.2...v4.10.4>
    
    ###
    [`v4.10.2`](https://redirect.github.com/CodSpeedHQ/action/releases/tag/v4.10.2)
    
    [Compare
    Source](https://redirect.github.com/CodSpeedHQ/action/compare/v4.10.1...v4.10.2)
    
    #### Release Notes
    
    ##### <!-- 0 -->🚀 Features
    
    - Improve efficiency of parse\_perf\_file by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Parse the perf file memory mappings by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    
    ##### <!-- 1 -->🐛 Bug Fixes
    
    - Remove very spammy trace logs by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;224](https://redirect.github.com/CodSpeedHQ/runner/pull/224)
    
    ##### <!-- 7 -->⚙️ Internals
    
    - chore: bump runner version to 4.10.2 by
    [@&#8203;github-actions](https://redirect.github.com/github-actions)\[bot]
    in [#&#8203;183](https://redirect.github.com/CodSpeedHQ/action/pull/183)
    - Remove useless conversions. by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    
    #### Install codspeed-runner 4.10.2
    
    ##### Install prebuilt binaries via shell script
    
    ```sh
    curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/codspeed/releases/download/v4.10.2/codspeed-runner-installer.sh | sh
    ```
    
    #### Download codspeed-runner 4.10.2
    
    | File | Platform | Checksum |
    |
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    | ---------------- |
    -------------------------------------------------------------------------------------------------------------------------------------
    |
    |
    [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.2/codspeed-runner-aarch64-unknown-linux-musl.tar.gz)
    | ARM64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.2/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256)
    |
    |
    [codspeed-runner-x86\_64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.2/codspeed-runner-x86_64-unknown-linux-musl.tar.gz)
    | x64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.2/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256)
    |
    
    **Full Runner Changelog**:
    <https://github.com/CodSpeedHQ/codspeed/blob/main/CHANGELOG.md>
    
    **Full Changelog**:
    <https://github.com/CodSpeedHQ/action/compare/v4.10.1...v4.10.2>
    
    ###
    [`v4.10.1`](https://redirect.github.com/CodSpeedHQ/action/releases/tag/v4.10.1)
    
    [Compare
    Source](https://redirect.github.com/CodSpeedHQ/action/compare/v4.10.0...v4.10.1)
    
    #### Release Notes
    
    ##### <!-- 0 -->🚀 Features
    
    - Implement `codspeed use` to set mode for shell session by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;221](https://redirect.github.com/CodSpeedHQ/runner/pull/221)
    - Show codspeed banner in CI when exec\_harness is used by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Improve the result table display
    ([#&#8203;217](https://redirect.github.com/CodSpeedHQ/action/issues/217))
    by [@&#8203;art049](https://redirect.github.com/art049) in
    [#&#8203;217](https://redirect.github.com/CodSpeedHQ/runner/pull/217)
    
    ##### <!-- 1 -->🐛 Bug Fixes
    
    - Initialize tracker before spawning sub-process by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    
    ##### <!-- 2 -->🏗️ Refactor
    
    - Restructure event handling with a common header and improve event
    parsing by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Create a module for shared structs between `exec` and `run` by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Remove logic from the run module by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Move the cli related module inside a cli module by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    
    ##### <!-- 7 -->⚙️ Internals
    
    - chore: bump runner version to 4.10.1 by
    [@&#8203;github-actions](https://redirect.github.com/github-actions)\[bot]
    in [#&#8203;182](https://redirect.github.com/CodSpeedHQ/action/pull/182)
    - Bump memtrack version
    - Turn warning about overwritten unwind\_data into debug logs by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;223](https://redirect.github.com/CodSpeedHQ/runner/pull/223)
    - Fix cargo check on macOs by
    [@&#8203;adriencaccia](https://redirect.github.com/adriencaccia)
    - Remove `codspeed use` without argument in favor of `codspeed show` by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;222](https://redirect.github.com/CodSpeedHQ/runner/pull/222)
    - Add clang-format pre-commit hook by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;219](https://redirect.github.com/CodSpeedHQ/runner/pull/219)
    - Save both old and new addr for `realloc` event by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    
    #### Install codspeed-runner 4.10.1
    
    ##### Install prebuilt binaries via shell script
    
    ```sh
    curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/codspeed/releases/download/v4.10.1/codspeed-runner-installer.sh | sh
    ```
    
    #### Download codspeed-runner 4.10.1
    
    | File | Platform | Checksum |
    |
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    | ---------------- |
    -------------------------------------------------------------------------------------------------------------------------------------
    |
    |
    [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.1/codspeed-runner-aarch64-unknown-linux-musl.tar.gz)
    | ARM64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.1/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256)
    |
    |
    [codspeed-runner-x86\_64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.1/codspeed-runner-x86_64-unknown-linux-musl.tar.gz)
    | x64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/codspeed/releases/download/v4.10.1/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256)
    |
    
    **Full Runner Changelog**:
    <https://github.com/CodSpeedHQ/codspeed/blob/main/CHANGELOG.md>
    
    **Full Changelog**:
    <https://github.com/CodSpeedHQ/action/compare/v4.10.0...v4.10.1>
    
    ###
    [`v4.10.0`](https://redirect.github.com/CodSpeedHQ/action/releases/tag/v4.10.0)
    
    [Compare
    Source](https://redirect.github.com/CodSpeedHQ/action/compare/v4.8.2...v4.10.0)
    
    #### Release Notes
    
    ##### <!-- 0 -->🚀 Features
    
    - Add pre-commit check to sync schema with code by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Add binary to generate project config schema by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Add command aliases by
    [@&#8203;art049](https://redirect.github.com/art049) in
    [#&#8203;216](https://redirect.github.com/CodSpeedHQ/runner/pull/216)
    
    ##### <!-- 1 -->🐛 Bug Fixes
    
    - Rename `targets` to `benchmarks` in the project\_config to match spec
    by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;220](https://redirect.github.com/CodSpeedHQ/runner/pull/220)
    - Use child process instead of pid/perf fifo for FIFO health check by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;201](https://redirect.github.com/CodSpeedHQ/runner/pull/201)
    - Make FIFO cancel-safe by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Dont run health check in hot path by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Update warning message format for go runner installation by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;218](https://redirect.github.com/CodSpeedHQ/runner/pull/218)
    - Tweaked exec-harness build for gcc15+ by
    [@&#8203;art049](https://redirect.github.com/art049)
    
    ##### <!-- 2 -->🏗️ Refactor
    
    - Move the whole runner logic under `lib.rs` to add other binaries by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    
    ##### <!-- 7 -->⚙️ Internals
    
    - Add cancel-safety test for FIFO by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Remove cargo check from pre-commit by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;215](https://redirect.github.com/CodSpeedHQ/runner/pull/215)
    - Remove runner\_mode from project config by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Improve readme by [@&#8203;art049](https://redirect.github.com/art049)
    in [#&#8203;214](https://redirect.github.com/CodSpeedHQ/runner/pull/214)
    
    **Full Runner Changelog**:
    <https://github.com/CodSpeedHQ/codspeed/blob/main/CHANGELOG.md>
    
    ###
    [`v4.8.2`](https://redirect.github.com/CodSpeedHQ/action/releases/tag/v4.8.2)
    
    [Compare
    Source](https://redirect.github.com/CodSpeedHQ/action/compare/v4.8.1...v4.8.2)
    
    #### Release Notes
    
    ##### <!-- 1 -->🐛 Bug Fixes
    
    - Check whether artifact contains any elements by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;204](https://redirect.github.com/CodSpeedHQ/runner/pull/204)
    
    ##### <!-- 7 -->⚙️ Internals
    
    - chore: bump runner version to 4.8.2 by
    [@&#8203;github-actions](https://redirect.github.com/github-actions)\[bot]
    in [#&#8203;174](https://redirect.github.com/CodSpeedHQ/action/pull/174)
    
    #### Install codspeed-runner 4.8.2
    
    ##### Install prebuilt binaries via shell script
    
    ```sh
    curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/runner/releases/download/v4.8.2/codspeed-runner-installer.sh | sh
    ```
    
    #### Download codspeed-runner 4.8.2
    
    | File | Platform | Checksum |
    |
    --------------------------------------------------------------------------------------------------------------------------------------------------------------------
    | ---------------- |
    ----------------------------------------------------------------------------------------------------------------------------------
    |
    |
    [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.8.2/codspeed-runner-aarch64-unknown-linux-musl.tar.gz)
    | ARM64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.8.2/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256)
    |
    |
    [codspeed-runner-x86\_64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.8.2/codspeed-runner-x86_64-unknown-linux-musl.tar.gz)
    | x64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.8.2/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256)
    |
    
    **Full Runner Changelog**:
    <https://github.com/CodSpeedHQ/runner/blob/main/CHANGELOG.md>
    
    **Full Changelog**:
    <https://github.com/CodSpeedHQ/action/compare/v4.8.1...v4.8.2>
    
    ###
    [`v4.8.1`](https://redirect.github.com/CodSpeedHQ/action/releases/tag/v4.8.1)
    
    [Compare
    Source](https://redirect.github.com/CodSpeedHQ/action/compare/v4.8.0...v4.8.1)
    
    #### Release Notes
    
    ##### <!-- 0 -->🚀 Features
    
    - Check if memtrack produced artifacts by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;195](https://redirect.github.com/CodSpeedHQ/runner/pull/195)
    - Require minimum protocol version for memtrack by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    
    ##### <!-- 1 -->🐛 Bug Fixes
    
    - Add explicit min version check for memory executor by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;203](https://redirect.github.com/CodSpeedHQ/runner/pull/203)
    
    ##### <!-- 7 -->⚙️ Internals
    
    - chore: bump runner version to 4.8.1 by
    [@&#8203;github-actions](https://redirect.github.com/github-actions)\[bot]
    in [#&#8203;173](https://redirect.github.com/CodSpeedHQ/action/pull/173)
    
    #### Install codspeed-runner 4.8.1
    
    ##### Install prebuilt binaries via shell script
    
    ```sh
    curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/runner/releases/download/v4.8.1/codspeed-runner-installer.sh | sh
    ```
    
    #### Download codspeed-runner 4.8.1
    
    | File | Platform | Checksum |
    |
    --------------------------------------------------------------------------------------------------------------------------------------------------------------------
    | ---------------- |
    ----------------------------------------------------------------------------------------------------------------------------------
    |
    |
    [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.8.1/codspeed-runner-aarch64-unknown-linux-musl.tar.gz)
    | ARM64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.8.1/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256)
    |
    |
    [codspeed-runner-x86\_64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.8.1/codspeed-runner-x86_64-unknown-linux-musl.tar.gz)
    | x64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.8.1/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256)
    |
    
    **Full Runner Changelog**:
    <https://github.com/CodSpeedHQ/runner/blob/main/CHANGELOG.md>
    
    **Full Changelog**:
    <https://github.com/CodSpeedHQ/action/compare/v4.8.0...v4.8.1>
    
    </details>
    
    <details>
    <summary>actions/cache (actions/cache)</summary>
    
    ###
    [`v5.0.3`](https://redirect.github.com/actions/cache/releases/tag/v5.0.3)
    
    [Compare
    Source](https://redirect.github.com/actions/cache/compare/v5.0.2...v5.0.3)
    
    ##### What's Changed
    
    - Bump `@actions/cache` to v5.0.5 (Resolves:
    <https://github.com/actions/cache/security/dependabot/33>)
    - Bump `@actions/core` to v2.0.3
    
    **Full Changelog**:
    <https://github.com/actions/cache/compare/v5...v5.0.3>
    
    </details>
    
    <details>
    <summary>actions/checkout (actions/checkout)</summary>
    
    ###
    [`v6.0.2`](https://redirect.github.com/actions/checkout/blob/HEAD/CHANGELOG.md#v602)
    
    [Compare
    Source](https://redirect.github.com/actions/checkout/compare/v6.0.1...v6.0.2)
    
    - Fix tag handling: preserve annotations and explicit fetch-tags by
    [@&#8203;ericsciple](https://redirect.github.com/ericsciple) in
    [#&#8203;2356](https://redirect.github.com/actions/checkout/pull/2356)
    
    </details>
    
    <details>
    <summary>anchore/sbom-action (anchore/sbom-action)</summary>
    
    ###
    [`v0.22.2`](https://redirect.github.com/anchore/sbom-action/releases/tag/v0.22.2)
    
    [Compare
    Source](https://redirect.github.com/anchore/sbom-action/compare/v0.22.1...v0.22.2)
    
    #### v0.22.2
    
    #### ⬆️ Dependencies
    
    - chore(deps): bump fast-xml-parser from 5.3.3 to 5.3.4
    ([#&#8203;581](https://redirect.github.com/anchore/sbom-action/issues/581))
    \[@&#8203;[dependabot\[bot\]](https://redirect.github.com/apps/dependabot)]
    - chore(deps): update Syft to v1.41.2
    ([#&#8203;582](https://redirect.github.com/anchore/sbom-action/issues/582))
    \[@&#8203;[anchore-actions-token-generator\[bot\]](https://redirect.github.com/apps/anchore-actions-token-generator)]
    - chore(deps-dev): bump the dev-dependencies group with 2 updates
    ([#&#8203;580](https://redirect.github.com/anchore/sbom-action/issues/580))
    \[@&#8203;[dependabot\[bot\]](https://redirect.github.com/apps/dependabot)]
    - chore(deps): update Syft to v1.41.1
    ([#&#8203;579](https://redirect.github.com/anchore/sbom-action/issues/579))
    \[@&#8203;[anchore-actions-token-generator\[bot\]](https://redirect.github.com/apps/anchore-actions-token-generator)]
    
    ###
    [`v0.22.1`](https://redirect.github.com/anchore/sbom-action/releases/tag/v0.22.1)
    
    [Compare
    Source](https://redirect.github.com/anchore/sbom-action/compare/v0.22.0...v0.22.1)
    
    #### v0.22.1
    
    #### ⬆️ Dependencies
    
    - chore(deps): update Syft to v1.41.0
    ([#&#8203;576](https://redirect.github.com/anchore/sbom-action/issues/576))
    \[@&#8203;[anchore-actions-token-generator\[bot\]](https://redirect.github.com/apps/anchore-actions-token-generator)]
    - chore(deps): bump lodash from 4.17.21 to 4.17.23
    ([#&#8203;573](https://redirect.github.com/anchore/sbom-action/issues/573))
    \[@&#8203;[dependabot\[bot\]](https://redirect.github.com/apps/dependabot)]
    
    ###
    [`v0.22.0`](https://redirect.github.com/anchore/sbom-action/releases/tag/v0.22.0)
    
    [Compare
    Source](https://redirect.github.com/anchore/sbom-action/compare/v0.21.1...v0.22.0)
    
    #### Changes in v0.22.0
    
    #### ⬆️ Dependencies
    
    - chore(deps-dev): bump the dev-dependencies group with 19 updates
    ([#&#8203;566](https://redirect.github.com/anchore/sbom-action/issues/566))
    \[[@&#8203;dependabot](https://redirect.github.com/dependabot)]
    - chore(deps): bump npm-check-updates from 17.1.3 to 19.3.1
    ([#&#8203;567](https://redirect.github.com/anchore/sbom-action/issues/567))
    \[[@&#8203;dependabot](https://redirect.github.com/dependabot)]
    - chore(deps): update Syft to v1.40.1
    ([#&#8203;563](https://redirect.github.com/anchore/sbom-action/issues/563))
    \[[@&#8203;anchore-actions-token-generator](https://redirect.github.com/anchore-actions-token-generator)\[bot]]
    
    </details>
    
    <details>
    <summary>fossas/fossa-action (fossas/fossa-action)</summary>
    
    ###
    [`v1.8.0`](https://redirect.github.com/fossas/fossa-action/compare/v1.7.0...v1.8.0)
    
    [Compare
    Source](https://redirect.github.com/fossas/fossa-action/compare/v1.7.0...v1.8.0)
    
    </details>
    
    <details>
    <summary>github/codeql-action (github/codeql-action)</summary>
    
    ###
    [`v4.32.2`](https://redirect.github.com/github/codeql-action/compare/v4.32.1...v4.32.2)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v4.32.1...v4.32.2)
    
    ###
    [`v4.32.1`](https://redirect.github.com/github/codeql-action/releases/tag/v4.32.1)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v4.32.0...v4.32.1)
    
    - A warning is now shown in Default Setup workflow logs if a [private
    package registry is
    configured](https://docs.github.com/en/code-security/how-tos/secure-at-scale/configure-organization-security/manage-usage-and-access/giving-org-access-private-registries)
    using a GitHub Personal Access Token (PAT), but no username is
    configured.
    [#&#8203;3422](https://redirect.github.com/github/codeql-action/pull/3422)
    - Fixed a bug which caused the CodeQL Action to fail when repository
    properties cannot successfully be retrieved.
    [#&#8203;3421](https://redirect.github.com/github/codeql-action/pull/3421)
    
    ###
    [`v4.32.0`](https://redirect.github.com/github/codeql-action/releases/tag/v4.32.0)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v4.31.11...v4.32.0)
    
    - Update default CodeQL bundle version to
    [2.24.0](https://redirect.github.com/github/codeql-action/releases/tag/codeql-bundle-v2.24.0).
    [#&#8203;3425](https://redirect.github.com/github/codeql-action/pull/3425)
    
    ###
    [`v4.31.11`](https://redirect.github.com/github/codeql-action/releases/tag/v4.31.11)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v4.31.10...v4.31.11)
    
    - When running a Default Setup workflow with [Actions debugging
    enabled](https://docs.github.com/en/actions/how-tos/monitor-workflows/enable-debug-logging),
    the CodeQL Action will now use more unique names when uploading logs
    from the Dependabot authentication proxy as workflow artifacts. This
    ensures that the artifact names do not clash between multiple jobs in a
    build matrix.
    [#&#8203;3409](https://redirect.github.com/github/codeql-action/pull/3409)
    - Improved error handling throughout the CodeQL Action.
    [#&#8203;3415](https://redirect.github.com/github/codeql-action/pull/3415)
    - Added experimental support for automatically excluding [generated
    files](https://docs.github.com/en/repositories/working-with-files/managing-files/customizing-how-changed-files-appear-on-github)
    from the analysis. This feature is not currently enabled for any
    analysis. In the future, it may be enabled by default for some
    GitHub-managed analyses.
    [#&#8203;3318](https://redirect.github.com/github/codeql-action/pull/3318)
    - The changelog extracts that are included with releases of the CodeQL
    Action are now shorter to avoid duplicated information from appearing in
    Dependabot PRs.
    [#&#8203;3403](https://redirect.github.com/github/codeql-action/pull/3403)
    
    </details>
    
    <details>
    <summary>streetsidesoftware/cspell-action
    (streetsidesoftware/cspell-action)</summary>
    
    ###
    [`v8.2.0`](https://redirect.github.com/streetsidesoftware/cspell-action/releases/tag/v8.2.0)
    
    [Compare
    Source](https://redirect.github.com/streetsidesoftware/cspell-action/compare/v8.1.2...v8.2.0)
    
    ##### Features
    
    - Update CSpell version (9.6.0)
    ([#&#8203;2579](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2579))
    ([3b93a9d](https://redirect.github.com/streetsidesoftware/cspell-action/commit/3b93a9dd6046db94507162a46f5a2bf306e208e8))
    
    ##### Updates and Bug Fixes
    
    - Update CSpell version (9.6.1)
    ([#&#8203;2583](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2583))
    ([e4206b2](https://redirect.github.com/streetsidesoftware/cspell-action/commit/e4206b25233cb24538facc2b15847de05ff97412))
    - Update CSpell version (9.6.2)
    ([#&#8203;2585](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2585))
    ([8611279](https://redirect.github.com/streetsidesoftware/cspell-action/commit/8611279637e223429e30fa7f29ed5d38dc993770))
    - Update Dictionaries and Dependencies
    ([#&#8203;2574](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2574))
    ([3d523d4](https://redirect.github.com/streetsidesoftware/cspell-action/commit/3d523d43db4105216082eb77a43914534f73c925))
    - Workflow Bot -- Update ALL Dependencies (main)
    ([#&#8203;2570](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2570))
    ([0d9fe36](https://redirect.github.com/streetsidesoftware/cspell-action/commit/0d9fe36eb65d3935077f62121271379c328ec6ea))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0Mi45Mi4xIiwidXBkYXRlZEluVmVyIjoiNDIuOTcuMCIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
