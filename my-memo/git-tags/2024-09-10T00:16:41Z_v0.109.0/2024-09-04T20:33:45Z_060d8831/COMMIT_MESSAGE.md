commit 060d8831684014c4c8c0d7e85775f8d4a6195026
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Wed Sep 4 13:33:45 2024 -0700

    Update module github.com/shirou/gopsutil/v4 to v4.24.8 (#11031)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [github.com/shirou/gopsutil/v4](https://redirect.github.com/shirou/gopsutil)
    | `v4.24.7` -> `v4.24.8` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fshirou%2fgopsutil%2fv4/v4.24.8?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fshirou%2fgopsutil%2fv4/v4.24.8?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fshirou%2fgopsutil%2fv4/v4.24.7/v4.24.8?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fshirou%2fgopsutil%2fv4/v4.24.7/v4.24.8?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>shirou/gopsutil (github.com/shirou/gopsutil/v4)</summary>
    
    ###
    [`v4.24.8`](https://redirect.github.com/shirou/gopsutil/releases/tag/v4.24.8)
    
    [Compare
    Source](https://redirect.github.com/shirou/gopsutil/compare/v4.24.7...v4.24.8)
    
    <!-- Release notes generated using configuration in .github/release.yml
    at v4.24.8 -->
    
    #### What's Changed
    
    ##### disk
    
    - fix(IOCountersWithContext): Fix the issue of not using names to fil
    ter devices in func IOCountersWithContext of the windows implementation
    by [@&#8203;zmyzheng](https://redirect.github.com/zmyzheng) in
    [https://github.com/shirou/gopsutil/pull/1688](https://redirect.github.com/shirou/gopsutil/pull/1688)
    - \[disk]\[windows]: ignore network drive when not ready by
    [@&#8203;shirou](https://redirect.github.com/shirou) in
    [https://github.com/shirou/gopsutil/pull/1699](https://redirect.github.com/shirou/gopsutil/pull/1699)
    
    ##### process
    
    - Fix parsing of /proc/pid/smaps when path is empty by
    [@&#8203;pgimalac](https://redirect.github.com/pgimalac) in
    [https://github.com/shirou/gopsutil/pull/1691](https://redirect.github.com/shirou/gopsutil/pull/1691)
    - Refactoring the algorithm for calculating CPU usage by
    [@&#8203;TheBestLL](https://redirect.github.com/TheBestLL) in
    [https://github.com/shirou/gopsutil/pull/1692](https://redirect.github.com/shirou/gopsutil/pull/1692)
    - Fix panic on OpenBSD and FreeBSD systems if KinfoProc size has an
    unexpected size by
    [@&#8203;fivitti](https://redirect.github.com/fivitti) in
    [https://github.com/shirou/gopsutil/pull/1694](https://redirect.github.com/shirou/gopsutil/pull/1694)
    
    ##### Other Changes
    
    - Fix badge link in README.md by
    [@&#8203;Yurunsoft](https://redirect.github.com/Yurunsoft) in
    [https://github.com/shirou/gopsutil/pull/1695](https://redirect.github.com/shirou/gopsutil/pull/1695)
    - fix golangcilint errors, ignore gosec G115 by
    [@&#8203;shirou](https://redirect.github.com/shirou) in
    [https://github.com/shirou/gopsutil/pull/1697](https://redirect.github.com/shirou/gopsutil/pull/1697)
    - fix: golangci lint with max -> maxConn by
    [@&#8203;shirou](https://redirect.github.com/shirou) in
    [https://github.com/shirou/gopsutil/pull/1693](https://redirect.github.com/shirou/gopsutil/pull/1693)
    
    #### New Contributors 🎉
    
    - [@&#8203;zmyzheng](https://redirect.github.com/zmyzheng) made their
    first contribution in
    [https://github.com/shirou/gopsutil/pull/1688](https://redirect.github.com/shirou/gopsutil/pull/1688)
    - [@&#8203;Yurunsoft](https://redirect.github.com/Yurunsoft) made their
    first contribution in
    [https://github.com/shirou/gopsutil/pull/1695](https://redirect.github.com/shirou/gopsutil/pull/1695)
    - [@&#8203;pgimalac](https://redirect.github.com/pgimalac) made their
    first contribution in
    [https://github.com/shirou/gopsutil/pull/1691](https://redirect.github.com/shirou/gopsutil/pull/1691)
    - [@&#8203;TheBestLL](https://redirect.github.com/TheBestLL) made their
    first contribution in
    [https://github.com/shirou/gopsutil/pull/1692](https://redirect.github.com/shirou/gopsutil/pull/1692)
    - [@&#8203;fivitti](https://redirect.github.com/fivitti) made their
    first contribution in
    [https://github.com/shirou/gopsutil/pull/1694](https://redirect.github.com/shirou/gopsutil/pull/1694)
    
    **Full Changelog**:
    https://github.com/shirou/gopsutil/compare/v4.24.7...v4.24.8
    
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
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOC41OS4yIiwidXBkYXRlZEluVmVyIjoiMzguNTkuMiIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
    Co-authored-by: Yang Song <songy23@users.noreply.github.com>
