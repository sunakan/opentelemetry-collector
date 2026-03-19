commit 0c5a4ffc7d2a506f7d6463c3619233d01cdd9c98
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jan 20 16:38:42 2026 +0000

    chore(deps): update github-actions deps (#14454)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    | [CodSpeedHQ/action](https://redirect.github.com/CodSpeedHQ/action) |
    action | minor | `v4.7.0` → `v4.8.0` |
    | [actions/cache](https://redirect.github.com/actions/cache) | action |
    patch | `v5.0.1` → `v5.0.2` |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>CodSpeedHQ/action (CodSpeedHQ/action)</summary>
    
    ###
    [`v4.8.0`](https://redirect.github.com/CodSpeedHQ/action/releases/tag/v4.8.0)
    
    [Compare
    Source](https://redirect.github.com/CodSpeedHQ/action/compare/v4.7.0...v4.8.0)
    
    #### Release Notes
    
    It is now possible to do consecutive CodSpeed run in the same GitHub
    job. This will allow using multiple instruments without having to spawn
    another job 🎉
    
    ```yaml
    jobs:
      codspeed:
        ...
        steps:
          ...
          - name: Build benchmarks
            run: cargo codspeed build -m analysis
    
          - name: Run benchmarks
            uses: CodSpeedHQ/action@v4
            with:
              run: cargo codspeed run
              mode: "simulation"
    
          - name: Run memory benchmarks
            uses: CodSpeedHQ/action@v4
            with:
              run: cargo codspeed run
              mode: "memory"
    ```
    
    ##### <!-- 0 -->🚀 Features
    
    - Allow defining targets in codspeed yaml by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;197](https://redirect.github.com/CodSpeedHQ/runner/pull/197)
    - Add an stdin mode to provide multiple commands by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Add a run index suffix by
    [@&#8203;fargito](https://redirect.github.com/fargito) in
    [#&#8203;199](https://redirect.github.com/CodSpeedHQ/runner/pull/199)
    - Make the config less strict about its config by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;198](https://redirect.github.com/CodSpeedHQ/runner/pull/198)
    - Add support for analysis mode with memory instrument by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Reduce shared fifo timeout to end executor runs faster after the
    program has ended by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;193](https://redirect.github.com/CodSpeedHQ/runner/pull/193)
    - Use a bufwriter to save unwind data by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Support dynamically and statically linked allocators by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Track `memalign` calls by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Accept IPC before creating tracker to avoid timeouts by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Add integration tests for complex cli commands by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Add the full command to the uri and handle hyphens better by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Add yaml project config discovery and loading by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;189](https://redirect.github.com/CodSpeedHQ/runner/pull/189)
    - Implement the walltime benchmarking algorithm by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Use rayon to collect perf walltime data by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Handle memory executor when displaying results by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;190](https://redirect.github.com/CodSpeedHQ/runner/pull/190)
    - Do not draw a table if there is only one benchmark by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Stop using the deprecated `time` field and use `value` instead by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    
    ##### <!-- 1 -->🐛 Bug Fixes
    
    - Fix behavior when multiple benchmarks are ran by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Simplify `run_part_id` computation by
    [@&#8203;fargito](https://redirect.github.com/fargito) in
    [#&#8203;200](https://redirect.github.com/CodSpeedHQ/runner/pull/200)
    - Write perf map all at once instead of line by line by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Drop privileges when running commands under sudo by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Make walltime results stat computation the same as pytest-codspeed by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;185](https://redirect.github.com/CodSpeedHQ/runner/pull/185)
    
    ##### <!-- 2 -->🏗️ Refactor
    
    - Move project config structs to interfaces mod by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Move all walltime benchmarking to its dedicated module by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    
    ##### <!-- 7 -->⚙️ Internals
    
    - chore: bump runner version to 4.8.0 by
    [@&#8203;github-actions](https://redirect.github.com/github-actions)\[bot]
    in [#&#8203;172](https://redirect.github.com/CodSpeedHQ/action/pull/172)
    - Bump memtrack version
    - Ignore .codspeed for exec-harness output by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Remove useless clone derive for project config by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Cleanup output by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;196](https://redirect.github.com/CodSpeedHQ/runner/pull/196)
    - Use simulation in codspeed action by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;194](https://redirect.github.com/CodSpeedHQ/runner/pull/194)
    - Cache benchmark executable by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Add prelude and remove linter dead\_code suppression by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Reduce logs verbosity of debug info and perf file serialization by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Remove unused execve event by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias) in
    [#&#8203;192](https://redirect.github.com/CodSpeedHQ/runner/pull/192)
    - Add prelude by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Print number of events written to disk by
    [@&#8203;not-matthias](https://redirect.github.com/not-matthias)
    - Switch to rust-cache to cache builds of the installed workspace
    binaries by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    in [#&#8203;191](https://redirect.github.com/CodSpeedHQ/runner/pull/191)
    - Install exec-harness before runner tests tests by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Remove double metadata information by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Add link to relevant issue for codspeed-rust metadata by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Use fork supporting compressed events for linux-perf-data by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Run exec-harness tests in separate CI job to prevent fifo issues by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    - Downgrade flate because 1.1.7 was yanked by
    [@&#8203;GuillaumeLagrange](https://redirect.github.com/GuillaumeLagrange)
    
    #### Install codspeed-runner 4.8.0
    
    ##### Install prebuilt binaries via shell script
    
    ```sh
    curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/runner/releases/download/v4.8.0/codspeed-runner-installer.sh | sh
    ```
    
    #### Download codspeed-runner 4.8.0
    
    | File | Platform | Checksum |
    |
    --------------------------------------------------------------------------------------------------------------------------------------------------------------------
    | ---------------- |
    ----------------------------------------------------------------------------------------------------------------------------------
    |
    |
    [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.8.0/codspeed-runner-aarch64-unknown-linux-musl.tar.gz)
    | ARM64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.8.0/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256)
    |
    |
    [codspeed-runner-x86\_64-unknown-linux-musl.tar.gz](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.8.0/codspeed-runner-x86_64-unknown-linux-musl.tar.gz)
    | x64 MUSL Linux |
    [checksum](https://redirect.github.com/CodSpeedHQ/runner/releases/download/v4.8.0/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256)
    |
    
    **Full Runner Changelog**:
    <https://github.com/CodSpeedHQ/runner/blob/main/CHANGELOG.md>
    
    **Full Changelog**:
    <https://github.com/CodSpeedHQ/action/compare/v4.7.0...v4.8.0>
    
    </details>
    
    <details>
    <summary>actions/cache (actions/cache)</summary>
    
    ###
    [`v5.0.2`](https://redirect.github.com/actions/cache/compare/v5.0.1...v5.0.2)
    
    [Compare
    Source](https://redirect.github.com/actions/cache/compare/v5.0.1...v5.0.2)
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0Mi44NS4xIiwidXBkYXRlZEluVmVyIjoiNDIuODUuMSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
