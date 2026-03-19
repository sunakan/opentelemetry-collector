commit 40a20a02a5629e3e071920de346197f1b5f0c6f0
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jun 18 10:32:00 2024 -0700

    Update module github.com/spf13/cobra to v1.8.1 (#10427)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    | [github.com/spf13/cobra](https://togithub.com/spf13/cobra) | `v1.8.0`
    -> `v1.8.1` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fspf13%2fcobra/v1.8.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fspf13%2fcobra/v1.8.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fspf13%2fcobra/v1.8.0/v1.8.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fspf13%2fcobra/v1.8.0/v1.8.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>spf13/cobra (github.com/spf13/cobra)</summary>
    
    ### [`v1.8.1`](https://togithub.com/spf13/cobra/releases/tag/v1.8.1)
    
    [Compare
    Source](https://togithub.com/spf13/cobra/compare/v1.8.0...v1.8.1)
    
    #### ✨ Features
    
    - Add env variable to suppress completion descriptions on create by
    [@&#8203;scop](https://togithub.com/scop) in
    [https://github.com/spf13/cobra/pull/1938](https://togithub.com/spf13/cobra/pull/1938)
    
    #### 🐛 Bug fixes
    
    - Micro-optimizations by [@&#8203;scop](https://togithub.com/scop) in
    [https://github.com/spf13/cobra/pull/1957](https://togithub.com/spf13/cobra/pull/1957)
    
    #### 🔧 Maintenance
    
    - build(deps): bump github.com/cpuguy83/go-md2man/v2 from 2.0.3 to 2.0.4
    by [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/spf13/cobra/pull/2127](https://togithub.com/spf13/cobra/pull/2127)
    - Consistent annotation names by
    [@&#8203;nirs](https://togithub.com/nirs) in
    [https://github.com/spf13/cobra/pull/2140](https://togithub.com/spf13/cobra/pull/2140)
    - Remove fully inactivated linters by
    [@&#8203;nirs](https://togithub.com/nirs) in
    [https://github.com/spf13/cobra/pull/2148](https://togithub.com/spf13/cobra/pull/2148)
    - Address golangci-lint deprecation warnings, enable some more linters
    by [@&#8203;scop](https://togithub.com/scop) in
    [https://github.com/spf13/cobra/pull/2152](https://togithub.com/spf13/cobra/pull/2152)
    
    #### 🧪 Testing & CI/CD
    
    - Add test for func in cobra.go by
    [@&#8203;korovindenis](https://togithub.com/korovindenis) in
    [https://github.com/spf13/cobra/pull/2094](https://togithub.com/spf13/cobra/pull/2094)
    - ci: test golang 1.22 by
    [@&#8203;cyrilico](https://togithub.com/cyrilico) in
    [https://github.com/spf13/cobra/pull/2113](https://togithub.com/spf13/cobra/pull/2113)
    - Optimized and added more linting by
    [@&#8203;scop](https://togithub.com/scop) in
    [https://github.com/spf13/cobra/pull/2099](https://togithub.com/spf13/cobra/pull/2099)
    - build(deps): bump actions/setup-go from 4 to 5 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/spf13/cobra/pull/2087](https://togithub.com/spf13/cobra/pull/2087)
    - build(deps): bump actions/labeler from 4 to 5 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/spf13/cobra/pull/2086](https://togithub.com/spf13/cobra/pull/2086)
    - build(deps): bump golangci/golangci-lint-action from 3.7.0 to 4.0.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/spf13/cobra/pull/2108](https://togithub.com/spf13/cobra/pull/2108)
    - build(deps): bump actions/cache from 3 to 4 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/spf13/cobra/pull/2102](https://togithub.com/spf13/cobra/pull/2102)
    
    #### ✏️ Documentation
    
    - Fixes and docs for usage as plugin by
    [@&#8203;nirs](https://togithub.com/nirs) in
    [https://github.com/spf13/cobra/pull/2070](https://togithub.com/spf13/cobra/pull/2070)
    - flags: clarify documentation that LocalFlags related function do not
    modify the state by [@&#8203;niamster](https://togithub.com/niamster) in
    [https://github.com/spf13/cobra/pull/2064](https://togithub.com/spf13/cobra/pull/2064)
    - chore: remove repetitive words by
    [@&#8203;racerole](https://togithub.com/racerole) in
    [https://github.com/spf13/cobra/pull/2122](https://togithub.com/spf13/cobra/pull/2122)
    - Add LXC to the list of projects using Cobra
    [@&#8203;VaradBelwalkar](https://togithub.com/VaradBelwalkar) in
    [https://github.com/spf13/cobra/pull/2071](https://togithub.com/spf13/cobra/pull/2071)
    - Update projects_using_cobra.md by
    [@&#8203;marcuskohlberg](https://togithub.com/marcuskohlberg) in
    [https://github.com/spf13/cobra/pull/2089](https://togithub.com/spf13/cobra/pull/2089)
    - \[chore]: update projects using cobra by
    [@&#8203;cmwylie19](https://togithub.com/cmwylie19) in
    [https://github.com/spf13/cobra/pull/2093](https://togithub.com/spf13/cobra/pull/2093)
    - Add Taikun CLI to list of projects by
    [@&#8203;Smidra](https://togithub.com/Smidra) in
    [https://github.com/spf13/cobra/pull/2098](https://togithub.com/spf13/cobra/pull/2098)
    - Add Incus to the list of projects using Cobra by
    [@&#8203;montag451](https://togithub.com/montag451) in
    [https://github.com/spf13/cobra/pull/2118](https://togithub.com/spf13/cobra/pull/2118)
    
    #### New Contributors
    
    - [@&#8203;VaradBelwalkar](https://togithub.com/VaradBelwalkar) made
    their first contribution in
    [https://github.com/spf13/cobra/pull/2071](https://togithub.com/spf13/cobra/pull/2071)
    - [@&#8203;marcuskohlberg](https://togithub.com/marcuskohlberg) made
    their first contribution in
    [https://github.com/spf13/cobra/pull/2089](https://togithub.com/spf13/cobra/pull/2089)
    - [@&#8203;cmwylie19](https://togithub.com/cmwylie19) made their first
    contribution in
    [https://github.com/spf13/cobra/pull/2093](https://togithub.com/spf13/cobra/pull/2093)
    - [@&#8203;korovindenis](https://togithub.com/korovindenis) made their
    first contribution in
    [https://github.com/spf13/cobra/pull/2094](https://togithub.com/spf13/cobra/pull/2094)
    - [@&#8203;niamster](https://togithub.com/niamster) made their first
    contribution in
    [https://github.com/spf13/cobra/pull/2064](https://togithub.com/spf13/cobra/pull/2064)
    - [@&#8203;Smidra](https://togithub.com/Smidra) made their first
    contribution in
    [https://github.com/spf13/cobra/pull/2098](https://togithub.com/spf13/cobra/pull/2098)
    - [@&#8203;montag451](https://togithub.com/montag451) made their first
    contribution in
    [https://github.com/spf13/cobra/pull/2118](https://togithub.com/spf13/cobra/pull/2118)
    - [@&#8203;cyrilico](https://togithub.com/cyrilico) made their first
    contribution in
    [https://github.com/spf13/cobra/pull/2113](https://togithub.com/spf13/cobra/pull/2113)
    - [@&#8203;racerole](https://togithub.com/racerole) made their first
    contribution in
    [https://github.com/spf13/cobra/pull/2122](https://togithub.com/spf13/cobra/pull/2122)
    - [@&#8203;pedromotita](https://togithub.com/pedromotita) made their
    first contribution in
    [https://github.com/spf13/cobra/pull/2120](https://togithub.com/spf13/cobra/pull/2120)
    - [@&#8203;cubxxw](https://togithub.com/cubxxw) made their first
    contribution in
    [https://github.com/spf13/cobra/pull/2128](https://togithub.com/spf13/cobra/pull/2128)
    
    ***
    
    Thank you everyone who contributed to this release and all your hard
    work! Cobra and this community would never be possible without all of
    you!!!! 🐍
    
    **Full Changelog**:
    https://github.com/spf13/cobra/compare/v1.8.0...v1.8.1
    
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
    
    This PR has been generated by [Mend
    Renovate](https://www.mend.io/free-developer-tools/renovate/). View
    repository job log
    [here](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy40MTAuMSIsInVwZGF0ZWRJblZlciI6IjM3LjQxMC4xIiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
