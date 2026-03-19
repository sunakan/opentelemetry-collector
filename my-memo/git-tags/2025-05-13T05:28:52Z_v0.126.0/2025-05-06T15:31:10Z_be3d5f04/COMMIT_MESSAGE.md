commit be3d5f046cf1d82dca365842794b3e6df20fa2f2
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue May 6 15:31:10 2025 +0000

    Update module github.com/shirou/gopsutil/v4 to v4.25.4 (#12967)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [github.com/shirou/gopsutil/v4](https://redirect.github.com/shirou/gopsutil)
    | `v4.25.3` -> `v4.25.4` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fshirou%2fgopsutil%2fv4/v4.25.4?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fshirou%2fgopsutil%2fv4/v4.25.4?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fshirou%2fgopsutil%2fv4/v4.25.3/v4.25.4?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fshirou%2fgopsutil%2fv4/v4.25.3/v4.25.4?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v4.25.4`](https://redirect.github.com/shirou/gopsutil/releases/tag/v4.25.4)
    
    [Compare
    Source](https://redirect.github.com/shirou/gopsutil/compare/v4.25.3...v4.25.4)
    
    <!-- Release notes generated using configuration in .github/release.yml
    at v4.25.4 -->
    
    ##### What's Changed
    
    ##### cpu
    
    - fix nil ptr by [@&#8203;dvovk](https://redirect.github.com/dvovk) in
    [https://github.com/shirou/gopsutil/pull/1835](https://redirect.github.com/shirou/gopsutil/pull/1835)
    - Fix win32\_SystemProcessorPerformanceInformation struct by
    [@&#8203;niemp100](https://redirect.github.com/niemp100) in
    [https://github.com/shirou/gopsutil/pull/1831](https://redirect.github.com/shirou/gopsutil/pull/1831)
    
    ##### disk
    
    - \[disk]\[linux] add bcachefs magic by
    [@&#8203;NewbieOrange](https://redirect.github.com/NewbieOrange) in
    [https://github.com/shirou/gopsutil/pull/1838](https://redirect.github.com/shirou/gopsutil/pull/1838)
    
    ##### host
    
    - refactor: using fmt.Errorf in InfoWithContext by
    [@&#8203;s0ders](https://redirect.github.com/s0ders) in
    [https://github.com/shirou/gopsutil/pull/1840](https://redirect.github.com/shirou/gopsutil/pull/1840)
    
    ##### Other Changes
    
    - fix: update github actions runner images by
    [@&#8203;shirou](https://redirect.github.com/shirou) in
    [https://github.com/shirou/gopsutil/pull/1841](https://redirect.github.com/shirou/gopsutil/pull/1841)
    - chore: enable govet linter by
    [@&#8203;mmorel-35](https://redirect.github.com/mmorel-35) in
    [https://github.com/shirou/gopsutil/pull/1825](https://redirect.github.com/shirou/gopsutil/pull/1825)
    - \[chore]: bump golangci-lint to v2.1.1 by
    [@&#8203;mmorel-35](https://redirect.github.com/mmorel-35) in
    [https://github.com/shirou/gopsutil/pull/1829](https://redirect.github.com/shirou/gopsutil/pull/1829)
    - chore: enable ineffassign linter by
    [@&#8203;mmorel-35](https://redirect.github.com/mmorel-35) in
    [https://github.com/shirou/gopsutil/pull/1843](https://redirect.github.com/shirou/gopsutil/pull/1843)
    
    ##### New Contributors
    
    - [@&#8203;NewbieOrange](https://redirect.github.com/NewbieOrange) made
    their first contribution in
    [https://github.com/shirou/gopsutil/pull/1838](https://redirect.github.com/shirou/gopsutil/pull/1838)
    - [@&#8203;dvovk](https://redirect.github.com/dvovk) made their first
    contribution in
    [https://github.com/shirou/gopsutil/pull/1835](https://redirect.github.com/shirou/gopsutil/pull/1835)
    - [@&#8203;niemp100](https://redirect.github.com/niemp100) made their
    first contribution in
    [https://github.com/shirou/gopsutil/pull/1831](https://redirect.github.com/shirou/gopsutil/pull/1831)
    - [@&#8203;s0ders](https://redirect.github.com/s0ders) made their first
    contribution in
    [https://github.com/shirou/gopsutil/pull/1840](https://redirect.github.com/shirou/gopsutil/pull/1840)
    
    **Full Changelog**:
    https://github.com/shirou/gopsutil/compare/v4.25.3...v4.25.4
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOS4yNjQuMCIsInVwZGF0ZWRJblZlciI6IjM5LjI2NC4wIiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
