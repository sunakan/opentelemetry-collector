commit 12146c9295e188400fb857ce3d516d70877afe86
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Fri Jan 3 23:10:16 2025 +0000

    Update module github.com/shirou/gopsutil/v4 to v4.24.12 (#12006)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [github.com/shirou/gopsutil/v4](https://redirect.github.com/shirou/gopsutil)
    | `v4.24.11` -> `v4.24.12` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fshirou%2fgopsutil%2fv4/v4.24.12?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fshirou%2fgopsutil%2fv4/v4.24.12?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fshirou%2fgopsutil%2fv4/v4.24.11/v4.24.12?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fshirou%2fgopsutil%2fv4/v4.24.11/v4.24.12?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v4.24.12`](https://redirect.github.com/shirou/gopsutil/releases/tag/v4.24.12)
    
    [Compare
    Source](https://redirect.github.com/shirou/gopsutil/compare/v4.24.11...v4.24.12)
    
    <!-- Release notes generated using configuration in .github/release.yml
    at v4.24.12 -->
    
    #### What's Changed
    
    ##### cpu
    
    - enable all rules of perfsprint linter by
    [@&#8203;mmorel-35](https://redirect.github.com/mmorel-35) in
    [https://github.com/shirou/gopsutil/pull/1762](https://redirect.github.com/shirou/gopsutil/pull/1762)
    - refactor(darwin): optimize string allocation by
    [@&#8203;uubulb](https://redirect.github.com/uubulb) in
    [https://github.com/shirou/gopsutil/pull/1768](https://redirect.github.com/shirou/gopsutil/pull/1768)
    
    ##### mem
    
    - enable testifylint linter by
    [@&#8203;mmorel-35](https://redirect.github.com/mmorel-35) in
    [https://github.com/shirou/gopsutil/pull/1743](https://redirect.github.com/shirou/gopsutil/pull/1743)
    
    ##### net
    
    - \[openbsd] set ConnectionsPid to return NotImplemented by
    [@&#8203;tuftedocelot](https://redirect.github.com/tuftedocelot) in
    [https://github.com/shirou/gopsutil/pull/1757](https://redirect.github.com/shirou/gopsutil/pull/1757)
    - Refactor: merge base functions to net.go by
    [@&#8203;shirou](https://redirect.github.com/shirou) in
    [https://github.com/shirou/gopsutil/pull/1764](https://redirect.github.com/shirou/gopsutil/pull/1764)
    
    ##### process
    
    - fix\[posix,windows]: release process after os.FindProcess() by
    [@&#8203;NitroCao](https://redirect.github.com/NitroCao) in
    [https://github.com/shirou/gopsutil/pull/1716](https://redirect.github.com/shirou/gopsutil/pull/1716)
    - enable all rules of testifylint linter by
    [@&#8203;mmorel-35](https://redirect.github.com/mmorel-35) in
    [https://github.com/shirou/gopsutil/pull/1761](https://redirect.github.com/shirou/gopsutil/pull/1761)
    - \[freebsd]: add CWD by
    [@&#8203;shirou](https://redirect.github.com/shirou) in
    [https://github.com/shirou/gopsutil/pull/1765](https://redirect.github.com/shirou/gopsutil/pull/1765)
    
    ##### sensors
    
    - fix\[darwin]: memory leak and string corruption in ARM Mac temperature
    sensors by [@&#8203;chuangbo](https://redirect.github.com/chuangbo) in
    [https://github.com/shirou/gopsutil/pull/1767](https://redirect.github.com/shirou/gopsutil/pull/1767)
    
    ##### Other Changes
    
    - fix\[github]: deprecate macos-12, add macos-15 by
    [@&#8203;shirou](https://redirect.github.com/shirou) in
    [https://github.com/shirou/gopsutil/pull/1760](https://redirect.github.com/shirou/gopsutil/pull/1760)
    - \[doc]: Update README for supported metrics. by
    [@&#8203;shirou](https://redirect.github.com/shirou) in
    [https://github.com/shirou/gopsutil/pull/1766](https://redirect.github.com/shirou/gopsutil/pull/1766)
    
    #### New Contributors
    
    - [@&#8203;NitroCao](https://redirect.github.com/NitroCao) made their
    first contribution in
    [https://github.com/shirou/gopsutil/pull/1716](https://redirect.github.com/shirou/gopsutil/pull/1716)
    - [@&#8203;tuftedocelot](https://redirect.github.com/tuftedocelot) made
    their first contribution in
    [https://github.com/shirou/gopsutil/pull/1757](https://redirect.github.com/shirou/gopsutil/pull/1757)
    - [@&#8203;chuangbo](https://redirect.github.com/chuangbo) made their
    first contribution in
    [https://github.com/shirou/gopsutil/pull/1767](https://redirect.github.com/shirou/gopsutil/pull/1767)
    
    **Full Changelog**:
    https://github.com/shirou/gopsutil/compare/v4.24.11...v4.24.12
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOS44NS4wIiwidXBkYXRlZEluVmVyIjoiMzkuODUuMCIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
