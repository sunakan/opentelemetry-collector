commit dc2034c702c06eac34b62b4ec1e62df222e9be45
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Sep 2 05:11:45 2025 +0000

    Update module github.com/shirou/gopsutil/v4 to v4.25.8 (#13743)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Confidence |
    |---|---|---|---|
    |
    [github.com/shirou/gopsutil/v4](https://redirect.github.com/shirou/gopsutil)
    | `v4.25.7` -> `v4.25.8` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fshirou%2fgopsutil%2fv4/v4.25.8?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fshirou%2fgopsutil%2fv4/v4.25.7/v4.25.8?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v4.25.8`](https://redirect.github.com/shirou/gopsutil/releases/tag/v4.25.8)
    
    [Compare
    Source](https://redirect.github.com/shirou/gopsutil/compare/v4.25.7...v4.25.8)
    
    <!-- Release notes generated using configuration in .github/release.yml
    at v4.25.8 -->
    
    ##### Important Change
    
    Starting from this release, `VirtualMemoryStat.Used` on Linux is now
    calculated based on `MemAvailable` in `meminfo`. This may cause a
    difference of approximately 6–10% compared to the previous calculation.
    
    To address this, we have introduced an opt-out mechanism. You can
    disable the new calculation by setting the context key
    `WillBeDeletedOptOutMemAvailableCalc` to `true`. Please note that this
    option is undocumented and **will be removed in six months** (Feb.
    2026).
    
    For more details, see
    [#&#8203;1873](https://redirect.github.com/shirou/gopsutil/issues/1873)
    and
    [#&#8203;1882](https://redirect.github.com/shirou/gopsutil/issues/1882).
    
    ##### What's Changed
    
    ##### cpu
    
    - Do not return an error on unknown CPU stepping by
    [@&#8203;pgimalac](https://redirect.github.com/pgimalac) in
    [#&#8203;1895](https://redirect.github.com/shirou/gopsutil/pull/1895)
    - Remove common test helper to skip tests by
    [@&#8203;rosstimothy](https://redirect.github.com/rosstimothy) in
    [#&#8203;1894](https://redirect.github.com/shirou/gopsutil/pull/1894)
    - feat(cpu): add Neoverse-V2/\* other models by
    [@&#8203;gyuho](https://redirect.github.com/gyuho) in
    [#&#8203;1902](https://redirect.github.com/shirou/gopsutil/pull/1902)
    - \[cpu]\[mem]\[linux]: throw error on Readline failed by
    [@&#8203;shirou](https://redirect.github.com/shirou) in
    [#&#8203;1908](https://redirect.github.com/shirou/gopsutil/pull/1908)
    
    ##### disk
    
    - \[disk]\[process]\[freebsd]: remove binary.go from common by
    [@&#8203;shirou](https://redirect.github.com/shirou) in
    [#&#8203;1907](https://redirect.github.com/shirou/gopsutil/pull/1907)
    
    ##### mem
    
    - \[mem]\[linux]: Used calculated from Total and Available by
    [@&#8203;shirou](https://redirect.github.com/shirou) in
    [#&#8203;1882](https://redirect.github.com/shirou/gopsutil/pull/1882)
    
    ##### process
    
    - process: Fix data race on darwin by
    [@&#8203;prashantv](https://redirect.github.com/prashantv) in
    [#&#8203;1901](https://redirect.github.com/shirou/gopsutil/pull/1901)
    
    ##### Other Changes
    
    - chore: enable fatcontext linter by
    [@&#8203;mmorel-35](https://redirect.github.com/mmorel-35) in
    [#&#8203;1885](https://redirect.github.com/shirou/gopsutil/pull/1885)
    - chore: enable time-date and time-equal rules from revive by
    [@&#8203;mmorel-35](https://redirect.github.com/mmorel-35) in
    [#&#8203;1891](https://redirect.github.com/shirou/gopsutil/pull/1891)
    - Fix: use compatible perfstat version to fix aix cgo builds by
    [@&#8203;gremat](https://redirect.github.com/gremat) in
    [#&#8203;1910](https://redirect.github.com/shirou/gopsutil/pull/1910)
    
    ##### New Contributors
    
    - [@&#8203;rosstimothy](https://redirect.github.com/rosstimothy) made
    their first contribution in
    [#&#8203;1894](https://redirect.github.com/shirou/gopsutil/pull/1894)
    - [@&#8203;prashantv](https://redirect.github.com/prashantv) made their
    first contribution in
    [#&#8203;1901](https://redirect.github.com/shirou/gopsutil/pull/1901)
    - [@&#8203;gyuho](https://redirect.github.com/gyuho) made their first
    contribution in
    [#&#8203;1902](https://redirect.github.com/shirou/gopsutil/pull/1902)
    - [@&#8203;gremat](https://redirect.github.com/gremat) made their first
    contribution in
    [#&#8203;1910](https://redirect.github.com/shirou/gopsutil/pull/1910)
    
    **Full Changelog**:
    <https://github.com/shirou/gopsutil/compare/v4.25.7...v4.25.8>
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0MS45MS4xIiwidXBkYXRlZEluVmVyIjoiNDEuOTEuMSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: otelbot <197425009+otelbot@users.noreply.github.com>
