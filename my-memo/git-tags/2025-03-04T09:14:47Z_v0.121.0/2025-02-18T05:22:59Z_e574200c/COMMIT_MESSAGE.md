commit e574200c5fe87a246d7f698ee4931ad31461e008
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Feb 18 05:22:59 2025 +0000

    Update module github.com/spf13/cobra to v1.9.1 (#12414)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    | [github.com/spf13/cobra](https://redirect.github.com/spf13/cobra) |
    `v1.8.1` -> `v1.9.1` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fspf13%2fcobra/v1.9.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fspf13%2fcobra/v1.9.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fspf13%2fcobra/v1.8.1/v1.9.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fspf13%2fcobra/v1.8.1/v1.9.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>spf13/cobra (github.com/spf13/cobra)</summary>
    
    ###
    [`v1.9.1`](https://redirect.github.com/spf13/cobra/releases/tag/v1.9.1)
    
    [Compare
    Source](https://redirect.github.com/spf13/cobra/compare/v1.9.0...v1.9.1)
    
    ##### 🐛 Fixes
    
    - Fix CompletionFunc implementation by
    [@&#8203;ccoVeille](https://redirect.github.com/ccoVeille) in
    [https://github.com/spf13/cobra/pull/2234](https://redirect.github.com/spf13/cobra/pull/2234)
    - Revert "Make detection for test-binary more universal
    ([#&#8203;2173](https://redirect.github.com/spf13/cobra/issues/2173))"
    by [@&#8203;marckhouzam](https://redirect.github.com/marckhouzam) in
    [https://github.com/spf13/cobra/pull/2235](https://redirect.github.com/spf13/cobra/pull/2235)
    
    **Full Changelog**:
    https://github.com/spf13/cobra/compare/v1.9.0...v1.9.1
    
    ###
    [`v1.9.0`](https://redirect.github.com/spf13/cobra/releases/tag/v1.9.0)
    
    [Compare
    Source](https://redirect.github.com/spf13/cobra/compare/v1.8.1...v1.9.0)
    
    #### ✨ Features
    
    - Allow linker to perform deadcode elimination for program using Cobra
    by [@&#8203;aarzilli](https://redirect.github.com/aarzilli) in
    [https://github.com/spf13/cobra/pull/1956](https://redirect.github.com/spf13/cobra/pull/1956)
    - Add default completion command even if there are no other sub-commands
    by [@&#8203;marckhouzam](https://redirect.github.com/marckhouzam) in
    [https://github.com/spf13/cobra/pull/1559](https://redirect.github.com/spf13/cobra/pull/1559)
    - Add CompletionWithDesc helper by
    [@&#8203;ccoVeille](https://redirect.github.com/ccoVeille) in
    [https://github.com/spf13/cobra/pull/2231](https://redirect.github.com/spf13/cobra/pull/2231)
    
    #### 🐛 Fixes
    
    - Fix deprecation comment for Command.SetOutput by
    [@&#8203;thaJeztah](https://redirect.github.com/thaJeztah) in
    [https://github.com/spf13/cobra/pull/2172](https://redirect.github.com/spf13/cobra/pull/2172)
    - Replace deprecated ioutil usage by
    [@&#8203;nirs](https://redirect.github.com/nirs) in
    [https://github.com/spf13/cobra/pull/2181](https://redirect.github.com/spf13/cobra/pull/2181)
    - Fix --version help and output for plugins by
    [@&#8203;nirs](https://redirect.github.com/nirs) in
    [https://github.com/spf13/cobra/pull/2180](https://redirect.github.com/spf13/cobra/pull/2180)
    - Allow to reset the templates to the default by
    [@&#8203;marckhouzam](https://redirect.github.com/marckhouzam) in
    [https://github.com/spf13/cobra/pull/2229](https://redirect.github.com/spf13/cobra/pull/2229)
    
    #### 🤖 Completions
    
    - Make Powershell completion work in constrained mode by
    [@&#8203;lstemplinger](https://redirect.github.com/lstemplinger) in
    [https://github.com/spf13/cobra/pull/2196](https://redirect.github.com/spf13/cobra/pull/2196)
    - Improve detection for flags that accept multiple values by
    [@&#8203;thaJeztah](https://redirect.github.com/thaJeztah) in
    [https://github.com/spf13/cobra/pull/2210](https://redirect.github.com/spf13/cobra/pull/2210)
    - add CompletionFunc type to help with completions by
    [@&#8203;ccoVeille](https://redirect.github.com/ccoVeille) in
    [https://github.com/spf13/cobra/pull/2220](https://redirect.github.com/spf13/cobra/pull/2220)
    - Add similar whitespace escape logic to bash v2 completions than in
    other completions by
    [@&#8203;kangasta](https://redirect.github.com/kangasta) in
    [https://github.com/spf13/cobra/pull/1743](https://redirect.github.com/spf13/cobra/pull/1743)
    - Print ActiveHelp for bash along other completions by
    [@&#8203;marckhouzam](https://redirect.github.com/marckhouzam) in
    [https://github.com/spf13/cobra/pull/2076](https://redirect.github.com/spf13/cobra/pull/2076)
    - fix(completions): Complete map flags multiple times by
    [@&#8203;gabe565](https://redirect.github.com/gabe565) in
    [https://github.com/spf13/cobra/pull/2174](https://redirect.github.com/spf13/cobra/pull/2174)
    - fix(bash): nounset unbound file filter variable on empty extension by
    [@&#8203;scop](https://redirect.github.com/scop) in
    [https://github.com/spf13/cobra/pull/2228](https://redirect.github.com/spf13/cobra/pull/2228)
    
    #### 🧪 Testing
    
    - Test also with go 1.23 by
    [@&#8203;nirs](https://redirect.github.com/nirs) in
    [https://github.com/spf13/cobra/pull/2182](https://redirect.github.com/spf13/cobra/pull/2182)
    - Make detection for test-binary more universal by
    [@&#8203;thaJeztah](https://redirect.github.com/thaJeztah) in
    [https://github.com/spf13/cobra/pull/2173](https://redirect.github.com/spf13/cobra/pull/2173)
    
    #### ✍🏼 Documentation
    
    - docs: update README.md by
    [@&#8203;eltociear](https://redirect.github.com/eltociear) in
    [https://github.com/spf13/cobra/pull/2197](https://redirect.github.com/spf13/cobra/pull/2197)
    - Improve site formatting by
    [@&#8203;nirs](https://redirect.github.com/nirs) in
    [https://github.com/spf13/cobra/pull/2183](https://redirect.github.com/spf13/cobra/pull/2183)
    - doc: add Conduit by [@&#8203;raulb](https://redirect.github.com/raulb)
    in
    [https://github.com/spf13/cobra/pull/2230](https://redirect.github.com/spf13/cobra/pull/2230)
    - doc: azion project added to the list of CLIs that use cobra by
    [@&#8203;maxwelbm](https://redirect.github.com/maxwelbm) in
    [https://github.com/spf13/cobra/pull/2198](https://redirect.github.com/spf13/cobra/pull/2198)
    - Fix broken links in active_help.md by
    [@&#8203;vuil](https://redirect.github.com/vuil) in
    [https://github.com/spf13/cobra/pull/2202](https://redirect.github.com/spf13/cobra/pull/2202)
    - chore: fix function name in comment by
    [@&#8203;zhuhaicity](https://redirect.github.com/zhuhaicity) in
    [https://github.com/spf13/cobra/pull/2216](https://redirect.github.com/spf13/cobra/pull/2216)
    
    #### 🔧 Dependency upgrades
    
    - build(deps): bump github.com/cpuguy83/go-md2man/v2 from 2.0.5 to 2.0.6
    by [@&#8203;thaJeztah](https://redirect.github.com/thaJeztah) in
    [https://github.com/spf13/cobra/pull/2206](https://redirect.github.com/spf13/cobra/pull/2206)
    - Update to latest go-md2man by
    [@&#8203;mikelolasagasti](https://redirect.github.com/mikelolasagasti)
    in
    [https://github.com/spf13/cobra/pull/2201](https://redirect.github.com/spf13/cobra/pull/2201)
    - Upgrade `pflag` dependencies for v1.9.0 by
    [@&#8203;jpmcb](https://redirect.github.com/jpmcb) in
    [https://github.com/spf13/cobra/pull/2233](https://redirect.github.com/spf13/cobra/pull/2233)
    
    ***
    
    Thank you to all of our amazing contributors and all the great work
    that's been going into the completions feature!!
    
    ##### 👋🏼 New Contributors
    
    - [@&#8203;gabe565](https://redirect.github.com/gabe565) made their
    first contribution in
    [https://github.com/spf13/cobra/pull/2174](https://redirect.github.com/spf13/cobra/pull/2174)
    - [@&#8203;maxwelbm](https://redirect.github.com/maxwelbm) made their
    first contribution in
    [https://github.com/spf13/cobra/pull/2198](https://redirect.github.com/spf13/cobra/pull/2198)
    - [@&#8203;lstemplinger](https://redirect.github.com/lstemplinger) made
    their first contribution in
    [https://github.com/spf13/cobra/pull/2196](https://redirect.github.com/spf13/cobra/pull/2196)
    - [@&#8203;vuil](https://redirect.github.com/vuil) made their first
    contribution in
    [https://github.com/spf13/cobra/pull/2202](https://redirect.github.com/spf13/cobra/pull/2202)
    - [@&#8203;mikelolasagasti](https://redirect.github.com/mikelolasagasti)
    made their first contribution in
    [https://github.com/spf13/cobra/pull/2201](https://redirect.github.com/spf13/cobra/pull/2201)
    - [@&#8203;zhuhaicity](https://redirect.github.com/zhuhaicity) made
    their first contribution in
    [https://github.com/spf13/cobra/pull/2216](https://redirect.github.com/spf13/cobra/pull/2216)
    - [@&#8203;ccoVeille](https://redirect.github.com/ccoVeille) made their
    first contribution in
    [https://github.com/spf13/cobra/pull/2220](https://redirect.github.com/spf13/cobra/pull/2220)
    - [@&#8203;kangasta](https://redirect.github.com/kangasta) made their
    first contribution in
    [https://github.com/spf13/cobra/pull/1743](https://redirect.github.com/spf13/cobra/pull/1743)
    - [@&#8203;aarzilli](https://redirect.github.com/aarzilli) made their
    first contribution in
    [https://github.com/spf13/cobra/pull/1956](https://redirect.github.com/spf13/cobra/pull/1956)
    
    **Full Changelog**:
    https://github.com/spf13/cobra/compare/v1.8.1...v1.9.0
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOS4xNjcuMSIsInVwZGF0ZWRJblZlciI6IjM5LjE2Ny4xIiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
