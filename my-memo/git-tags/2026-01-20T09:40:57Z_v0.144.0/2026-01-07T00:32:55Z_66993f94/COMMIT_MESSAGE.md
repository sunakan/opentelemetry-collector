commit 66993f944a36e6b643db64a6ea52bb7a7578bbb8
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Wed Jan 7 00:32:55 2026 +0000

    fix(deps): update module github.com/shirou/gopsutil/v4 to v4.25.12 (#14388)
    
    This PR contains the following updates:
    
    | Package | Change |
    [Age](https://docs.renovatebot.com/merge-confidence/) |
    [Confidence](https://docs.renovatebot.com/merge-confidence/) |
    |---|---|---|---|
    |
    [github.com/shirou/gopsutil/v4](https://redirect.github.com/shirou/gopsutil)
    | `v4.25.11` → `v4.25.12` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fshirou%2fgopsutil%2fv4/v4.25.12?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fshirou%2fgopsutil%2fv4/v4.25.11/v4.25.12?slim=true)
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
    [`v4.25.12`](https://redirect.github.com/shirou/gopsutil/releases/tag/v4.25.12)
    
    [Compare
    Source](https://redirect.github.com/shirou/gopsutil/compare/v4.25.11...v4.25.12)
    
    <!-- Release notes generated using configuration in .github/release.yml
    at v4.25.12 -->
    
    #### What's Changed
    
    ##### cpu
    
    - \[cpu]\[linux]: fix ":" in CPU ModelName by
    [@&#8203;shirou](https://redirect.github.com/shirou) in
    [#&#8203;1960](https://redirect.github.com/shirou/gopsutil/pull/1960)
    - \[cpu]\[linux]: add riscv cpu parser by
    [@&#8203;mengzhuo](https://redirect.github.com/mengzhuo) in
    [#&#8203;1970](https://redirect.github.com/shirou/gopsutil/pull/1970)
    - \[cpu]\[darwin]: release pCoreRef in each iteration by
    [@&#8203;uubulb](https://redirect.github.com/uubulb) in
    [#&#8203;1971](https://redirect.github.com/shirou/gopsutil/pull/1971)
    - \[darwin]: wrap library functions as struct methods by
    [@&#8203;uubulb](https://redirect.github.com/uubulb) in
    [#&#8203;1976](https://redirect.github.com/shirou/gopsutil/pull/1976)
    
    ##### disk
    
    - Fixes
    [#&#8203;1284](https://redirect.github.com/shirou/gopsutil/issues/1284)
    by [@&#8203;johnnybubonic](https://redirect.github.com/johnnybubonic) in
    [#&#8203;1931](https://redirect.github.com/shirou/gopsutil/pull/1931)
    - fix disk.Partition cut off after first disk by
    [@&#8203;sni](https://redirect.github.com/sni) in
    [#&#8203;1975](https://redirect.github.com/shirou/gopsutil/pull/1975)
    - \[disk]\[windows]: add virtual drive for TestGetLogicalDrives by
    [@&#8203;shirou](https://redirect.github.com/shirou) in
    [#&#8203;1977](https://redirect.github.com/shirou/gopsutil/pull/1977)
    - Add missing mount flags (local, protect) by
    [@&#8203;Kerlenton](https://redirect.github.com/Kerlenton) in
    [#&#8203;1968](https://redirect.github.com/shirou/gopsutil/pull/1968)
    
    ##### host
    
    - Replace AIX uptime function with ps etimes-based implementation by
    [@&#8203;Dylan-M](https://redirect.github.com/Dylan-M) in
    [#&#8203;1967](https://redirect.github.com/shirou/gopsutil/pull/1967)
    
    ##### mem
    
    - feat(mem): Add support for Percpu by
    [@&#8203;pvlltvk](https://redirect.github.com/pvlltvk) in
    [#&#8203;1972](https://redirect.github.com/shirou/gopsutil/pull/1972)
    
    ##### process
    
    - Add NumFDs implementation for Darwin by
    [@&#8203;Kerlenton](https://redirect.github.com/Kerlenton) in
    [#&#8203;1965](https://redirect.github.com/shirou/gopsutil/pull/1965)
    - \[sensors]\[darwin]: retrieve sensor information in one function call
    by [@&#8203;uubulb](https://redirect.github.com/uubulb) in
    [#&#8203;1973](https://redirect.github.com/shirou/gopsutil/pull/1973)
    
    #### New Contributors
    
    - [@&#8203;Kerlenton](https://redirect.github.com/Kerlenton) made their
    first contribution in
    [#&#8203;1965](https://redirect.github.com/shirou/gopsutil/pull/1965)
    - [@&#8203;sni](https://redirect.github.com/sni) made their first
    contribution in
    [#&#8203;1975](https://redirect.github.com/shirou/gopsutil/pull/1975)
    - [@&#8203;pvlltvk](https://redirect.github.com/pvlltvk) made their
    first contribution in
    [#&#8203;1972](https://redirect.github.com/shirou/gopsutil/pull/1972)
    - [@&#8203;mengzhuo](https://redirect.github.com/mengzhuo) made their
    first contribution in
    [#&#8203;1970](https://redirect.github.com/shirou/gopsutil/pull/1970)
    
    **Full Changelog**:
    <https://github.com/shirou/gopsutil/compare/v4.25.11...v4.25.12>
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "on tuesday" (UTC), Automerge - At any
    time (no schedule defined).
    
    🚦 **Automerge**: Disabled by config. Please merge this manually once you
    are satisfied.
    
    ♻ **Rebasing**: Whenever PR becomes conflicted, or you tick the
    rebase/retry checkbox.
    
    🔕 **Ignore**: Close this PR and you won't be reminded about these
    updates again.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0Mi42OS4xIiwidXBkYXRlZEluVmVyIjoiNDIuNjkuMSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
